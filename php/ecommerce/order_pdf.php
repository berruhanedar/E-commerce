<?php
include('vendor/autoload.php');
require('connection.inc.php');
require('functions.inc.php');

// Yönetici oturumu kontrolü
if(!isset($_SESSION['ADMIN_LOGIN'])){
    // Kullanıcı oturumu kontrolü
    if(!isset($_SESSION['USER_ID'])){
        // Kullanıcı oturumu yoksa işlemi sonlandır
        die();
    }
}

$order_id = get_safe_value($con, $_GET['id']);

// Kupon değerini alırken float'a dönüştür
$coupon_details = mysqli_fetch_assoc(mysqli_query($con, "SELECT coupon_value FROM `order` WHERE id='$order_id'"));
$coupon_value = (float) $coupon_details['coupon_value'];

$css = file_get_contents('css/bootstrap.min.css');
$css .= file_get_contents('style.css');

// HTML içeriğini invoice.html dosyasından al
$html = file_get_contents('invoice.html');

// Değişkenleri doldur
$html = str_replace('{{invoice_id}}', $order_id, $html);
$html = str_replace('{{date}}', date('F j, Y'), $html);

// total_price değişkenini tanımla ve başlangıç değeri ata
$total_price = 0;

// Tablo içeriğini doldur
$table_data = '';

// Ürün tablosunu doldur
if(isset($_SESSION['ADMIN_LOGIN'])){
    $res = mysqli_query($con, "SELECT DISTINCT(order_detail.id), order_detail.*, product.name, product.image FROM order_detail, product, `order` WHERE order_detail.order_id='$order_id' AND order_detail.product_id=product.id");
}else{
    $uid = $_SESSION['USER_ID'];
    $res = mysqli_query($con, "SELECT DISTINCT(order_detail.id), order_detail.*, product.name, product.image FROM order_detail, product, `order` WHERE order_detail.order_id='$order_id' AND `order`.user_id='$uid' AND order_detail.product_id=product.id");
}

if(mysqli_num_rows($res) > 0){
    while($row = mysqli_fetch_assoc($res)){
        $total_price += $row['qty'] * $row['price'];
        $table_data .= '<tr>
                            <td>'.$row['name'].'</td>
                            <td>'.$row['qty'].'</td>
                            <td>'.$row['price'].'</td>
                            <td>'.$row['qty'] * $row['price'].'</td>
                        </tr>';
    }
}

// Kupon değeri varsa ekle
if($coupon_value != ''){
    $table_data .= '<tr>
                        <td colspan="3"></td>
                        <td>Coupon Value</td>
                        <td>'.$coupon_value.'</td>
                    </tr>';
}

// Toplam tutarı ekleyin
$total_price -= $coupon_value;

// Toplam fiyatı ekle
$table_data .= '<tr>
                    <td colspan="3"></td>
                    <td>Total Price</td>
                    <td>'.$total_price.'</td>
                </tr>';

// Verileri tabloya yerleştir
$html = str_replace('{{invoice_details}}', $table_data, $html);

$mpdf = new \Mpdf\Mpdf();
$mpdf->WriteHTML($css, 1);
$mpdf->WriteHTML($html, 2);
$file = time() . '.pdf';
$mpdf->Output($file, 'D');
?>
