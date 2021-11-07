								var d = null; // Ngày
								var h = null; // Giờ
								var m = null; // Phút
								var s = null; // Giây
                                var mua = null;
								function start()
								{
								/*BƯỚC 1: LẤY GIÁ TRỊ BAN ĐẦU*/
 								if (h === null)
    							{
									d = 2;
        							h = 36;
        							m = 0;
        							s = 2;
    							}
 
								if (s === -1){
    								m -= 1;
    								s = 59;
								}
 
    							// Nếu số phút = -1 tức là đã chạy ngược hết số phút, lúc này:
    							//  - giảm số giờ xuống 1 đơn vị
    							//  - thiết lập số phút lại 59
								if (m === -1){
    								h -= 1;
    								m = 59;
								}

								if (h === -1){
									d = 0;
									h = 23;
    								m = 59;
								}
 
    							// Nếu số ngày = -1 tức là đã hết giờ, lúc này:
    							//  - Dừng chương trình
								if (d == 0 && h == 0 && m == 0 && s == 0){
                                document.getElementById("mua").style.display = 'none';
    							clearTimeout(timeout);
    							return false;
								}
    							/*BƯỚC 1: HIỂN THỊ ĐỒNG HỒ*/
								document.getElementById('d').innerText = d.toString();
    							document.getElementById('h').innerText = h.toString();
    							document.getElementById('m').innerText = m.toString();
    							document.getElementById('s').innerText = s.toString();
    							/*BƯỚC 1: GIẢM PHÚT XUỐNG 1 GIÂY VÀ GỌI LẠI SAU 1 GIÂY */
    							timeout = setTimeout(function(){
        						s--;
								start();
    							}, 1000);
							}
							start();
