package pay.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.ibatis.sqlmap.client.SqlMapClient;

import pay.vo.PayVO;

public class PayDAOImpl implements IPayDAO{
	
	private static IPayDAO dao;
	
	private PayDAOImpl() {
	}
	
	public static IPayDAO getInstance() {
		if(dao == null) {
			dao = new PayDAOImpl();
		}
		return dao;
	}

	@Override
	public int insertPay(SqlMapClient smc, PayVO pv){
		int cnt = 0;
		try {
			cnt = smc.update("payment.insertPay",pv);
		} catch (SQLException e) {
			e.printStackTrace();
			throw new RuntimeException("Pay SQL입력오류!!!", e);
		}
		return cnt;
	}

	@Override
	public List<PayVO> getAllPayList(SqlMapClient smc) {
		List<PayVO> payList = new ArrayList<PayVO>();
		
		try {
			payList = smc.queryForList("payment.getPayAll");
		} catch (SQLException e) {
			e.printStackTrace();
			throw new RuntimeException("Pay SQL전체출력 오류!!!", e);
		}
		
		return payList;
	}

	@Override
	public boolean checkPay(SqlMapClient smc, String payId) {
		boolean chk = false;
		try {
			int cnt = (int)smc.queryForObject("payment.checkPay", payId);
			if(cnt > 0) {
				chk = true;
			}
		} catch (SQLException e) {
			e.printStackTrace();
			throw new RuntimeException("Pay유무확인 도중 오류발생!", e);
		}
		return chk;
	}

	@Override
	public PayVO getPay(SqlMapClient smc, String payId) {
		PayVO pv = null;
		try {
			pv = (PayVO) smc.queryForObject("payment.getPay",payId);
		} catch (SQLException e) {
			e.printStackTrace();
			throw new RuntimeException("Pay 정보조회중 오류발생!!", e);
		}
		return pv;
	}

	@Override
	public List<PayVO> searchPayList(SqlMapClient smc, PayVO pv) {
		List<PayVO> payList = new ArrayList<PayVO>();
		
		try {
			payList = smc.queryForList("payment.searchPay",pv);
		} catch (SQLException e) {
			e.printStackTrace();
			throw new RuntimeException("Pay 정보 검색중 예외 발생!", e);
		}
		return payList;
	}

	@Override
	public int refundPay(SqlMapClient smc, String refundId) {
		int cnt = 0;
		
		try {
			cnt = smc.update("payment.updateSucPay", refundId);
			
		}catch(SQLException ex) {
			ex.printStackTrace();
			throw new RuntimeException("Pay 수정중 예외 발생!", ex);
		}
		
		return cnt;
	}

	
}
