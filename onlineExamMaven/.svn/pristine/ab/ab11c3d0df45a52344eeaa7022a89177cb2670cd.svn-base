package com.echo.web.util.calculate;

/**
 * 
 * 当前类主要计算车辆服务费 三种形式
 *         计重量
 *         起步价
 *         计时长
 *         
 * @author tangsixiang
 *  @category 里程和时间的计算方法，按照行车轨迹进行计算 
 *
 */
public class CarServiceChargeUtil {

	 
    /**
     * 
     * 
     * 车辆计费信息
     * @param orderId 订单号
     * @param vCard 车牌号
     * @param businessType 派送计费类型  weigthPirce   startPrice   lengthPrice
     * @return
     */
	public  double    carMessageDataPreparationMulitUtils(String orderId,String vCard,String businessType){
		//通过查询订单   
		// 和车牌号
		//获取 计算费用所必要的费用   暂定数据存储在 mysql  redis solr 中  根据后面数据具体情况
		//采用 JMS 分布式消息订阅MQ想后实时传递状态或这 存储到REDIS中  动态计算计费需要必要数据 ：
		
		
		
		return 0d;
	}
	
	
	
	
	
	/**
	 * @category
	 * 一微快运按照货物重量进行计算订单费用
	 * 计算当前车主车辆的货物重量。
	 * 公斤费用，每公斤每个里程的费用
	 * 时间费用，从配送开始到配送完成的时间费用
	 *  计重的计费方式:（（起步价+（总重量—起始包含重量）+(总重量—起始包含重量)*公斤费用+总时间*时间费用））*溢价=订单总金额
	 *  
	 *  @param weight  载货净重量 KG
	 *  @param startPice 起步价
	 *  @param weigthPirce 公斤费用
	 *  @param totalTime 总时长  （分钟）
	 *  @param timePrice 时间费用
	 *  @param premium   溢价
	 * @return  订单总金额
	 */
	public  double goodsWeightUtil(Integer weight,Double startPice,Double weigthPirce,Integer totalTime,Double timePrice,Double premium){
		
		return (startPice+weight*(weigthPirce+1)+totalTime*timePrice)*premium;
	}
	
	/**
	 * @category
	 * 一微快运按照起步价进行计算订单费用
	 * 
	 * 默认起步价含公里里程。
 	 * 里程的计算规则，根据当前车辆回传的定位信息，计算车辆根据定位信息记录当前车辆的行使轨迹计算当前车辆形势的总里程。
     * 时间费用计算规则，从配送开始到配送完成的时间费用。
	 *	里程费用计算规则，从配送开始到配送完成的里程费用。
		*起步价的计费公式 :（起步价+（总里程—起始包含里程）+时间费用*金额+里程费用*金额）+溢价=订单总费用
		*@param startPice 起步价
		*@param effectiveMileage 有效计算距离=总里程—起始包含里程   
		*@param timePrice  时间费用
		*@param  distancePirce 距离价格
		*@param price 金额
		* @param  premium   溢价
	 * @return 
	 */
	public  double startingriceUtil(Double startPice,Double effectiveMileage,Double timePrice,Double distancePirce,Double price,Double premium){
		return (startPice+(effectiveMileage)+(timePrice+distancePirce)*price)*(1+premium);
	}
	
	
	/**
	 * @category
	 * 一微快运按照时长进行计算订单费用
	 *  起步价，默认时长的起步价
	 *  时间费用，从配送开始到配送完成的时间费用
	 *  里程费用计算规则，从配送开始到配送完成的里程费用
	 *  市场的计费方式 :（起步价+（总时长—起始包含时长）*时间费用+总里程*里程费用）+溢价=订单总金额
	 *  @param startPice 起步价
	 *  @param totalTime 总耗时
	 *  @param timePrice 时间费用
	 *  @param effectiveMileage 有效里程
	 *  @param distancePirce 里程费用 
	 *  @param premium 溢价
	 * @return
	 */
	public  double LengthOfServiceUtil(Double startPice,Integer totalTime,Double timePrice,Double effectiveMileage,Double distancePirce,Double premium){
          double FixedLength=30;
          return (startPice+(totalTime-FixedLength)*timePrice+(effectiveMileage*distancePirce))*(1+premium);
	}
}
