package pay.service;

import java.sql.SQLException;
import java.util.List;

import com.ibatis.sqlmap.client.SqlMapClient;

import pay.dao.IPayDAO;
import pay.dao.PayDAOImpl;
import pay.vo.PayVO;
import util.SqlMapClientFactory;

public class PayServiceImpl implements IPayService{
	
	private static IPayService service;
	private static IPayDAO dao;
	private SqlMapClient smc;
	
	private PayServiceImpl() {
		dao = PayDAOImpl.getInstance();
		smc = SqlMapClientFactory.getInstance();
	}
	
	public static IPayService getInstance() {
		if(service == null) {
			service = new PayServiceImpl();
		}
		return service;
	}

	@Override
	public int insertPay(PayVO pv) {
		int cnt = 0;
		
		try {
			smc.startTransaction();
			cnt = dao.insertPay(smc, pv);
			smc.commitTransaction();
		} catch (Exception e) {
			try {
				smc.endTransaction();
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
			e.printStackTrace();
		} finally {
			try {
				smc.endTransaction();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		
		return cnt;
	}

	@Override
	public List<PayVO> getAllPayList() {
		return dao.getAllPayList(smc);
	}

	@Override
	public boolean checkPay(String payId) {
		return dao.checkPay(smc, payId);
	}

	@Override
	public PayVO getPay(String payId) {
		return dao.getPay(smc, payId);
	}

	@Override
	public List<PayVO> searchPayList(PayVO pv) {
		return dao.searchPayList(smc, pv);
	}

	@Override
	public int refundPay(String refundId) {
		return dao.refundPay(smc, refundId);
	}
	
}
