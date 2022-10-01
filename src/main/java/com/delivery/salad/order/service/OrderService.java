//package com.delivery.salad.order.service;
//
//import java.sql.Date;
//import java.text.SimpleDateFormat;
//import java.util.ArrayList;
//import java.util.List;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Service;
//import org.springframework.transaction.annotation.Transactional;
//
//import com.delivery.salad.cart.mapper.ICartMapper;
//import com.delivery.salad.command.CartVO;
//import com.delivery.salad.command.OrderPageProductVO;
//import com.delivery.salad.command.OrderProdVO;
//import com.delivery.salad.command.OrderVO;
//import com.delivery.salad.command.ProductVO;
//import com.delivery.salad.command.UserVO;
//import com.delivery.salad.order.mapper.IOrderMapper;
//import com.delivery.salad.product.mapper.IProductMapper;
//import com.delivery.salad.user.mapper.IUserMapper;
//
//import lombok.experimental.PackagePrivate;
//
//@Service
//public class OrderService implements IOrderMapper {
///*	
//	@Autowired
//	private IOrderMapper orderMapper;
//	
//	@Autowired
//	private IUserMapper userMapper;
//	
//	@Autowired
//	private ICartMapper cartMapper;
//	
//	@Autowired
//	private IProductMapper productMapper;
//	
//	@Override
//	public List<OrderPageProductVO> getGoodsInfo(List<OrderPageProductVO> orders) {
//		
//		List<OrderPageProductVO> result = new ArrayList<OrderPageProductVO>();
//		
//		for(OrderPageProductVO opp : orders) {
//			
////			OrderPageProductVO productInfo = orderMapper.getGoodsInfo(opp.getProductNum());
////			
////			productInfo.setProductCount(opp.getProductCount());
////			productInfo.initTotalPrice();
////			
////			result.add(productInfo);
//		}
//		return result;
//	}
//
//	@Override
//	@Transactional
//	public void order(OrderVO vo) {
//		
//		/** 사용할 데이터 가져오기 */
//			/** 회원 정보 */
//		
//		
////			UserVO user = userMapper.getUserInfo(vo.getUserId());
//			
//			/** 주문 정보 */
//			List<OrderProdVO> opl = new ArrayList<>();
//			for(OrderProdVO opv : vo.getOrders()) {
//				OrderProdVO orderProd = orderMapper.getOrderInfo(opv.getProductNum());
//				
//				//수량 셋팅 
//				orderProd.setProductCount(opv.getProductCount());
//				//기본 정보 셋팅 
//				orderProd.inintTotal();
//				//List객체 추가 
//				opl.add(orderProd);
//				
//			}
//			/** OrderVO 셋팅 */
//			vo.setOrders(opl);
//			vo.getOrderPriceInfo();
//			
//			/** DB 주문, 주문상품, 배송정보  넣기 */
//				/** orderId만들기 및 OrderVO객체 orderId에 저장 */
//			Date date = new Date(0);
//			SimpleDateFormat format = new SimpleDateFormat("_yyyyMMddmm");
//		//	String orderNum = user.getUserId() + format.format(date);
//		//	vo.setOrderNum(orderNum);
//			
//				/** DB 입력 */
//				orderMapper.registerOrder(vo); //ORDER등록 
//				for(OrderProdVO opv : vo.getOrders()) { //ORDERPROD 등록 
//			//		opv.setOrderNum(orderNum);
//					orderMapper.registerOrderProd(opv);
//					
//				/** 장바구니 제거 */
//					for(OrderProdVO ordpv : vo.getOrders()) {
//						CartVO cart = new CartVO();
//						cart.setUserId(vo.getUserId());
//						cart.setProductNum(ordpv.getProductNum());
//						
//						cartMapper.deleteOrderCart(cart);
//					}
//				}
//				
//				
				/* 주문취소 */
//				@Override
//				@Transactional
//				public void orderCancle(OrderCancelVO ocv) {
//					
//				/* 주문, 주문상품 객체 */
//					/*회원*/
//						UserVO user = userMapper.getUserInfo(ocv.getMemberId());
//					/*주문상품*/
//						List<OrderProductVO> opvl = orderMapper.getOrderProdInfo(ocv.getOrderId());
//						for(OrderProductVO ord : opvl) {
//							ord.initSaleTotal();
//						}
//					/* 주문 */
//						OrderVO odv = orderMapper.getOrder(ocv.getOrderId());
//						odv.setOrders(opvl);
//						
//						odv.getOrderPriceInfo();
//						
//						/* 주문상품 취소 DB */
//						orderMapper.orderCancle(ocv.getOrderId());
//						
//				
//						}	
			
//	}
	


//}
