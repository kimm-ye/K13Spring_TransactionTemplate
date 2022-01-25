package com.kosmo.transactiontemplate;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import transaction.TicketDTO;
import transaction.TicketTplDAO;

@Controller
public class TransactionController {
	
	//트랜잭션 템플릿 사용을 위한 빈 자동주입
	@Autowired
	private TicketTplDAO daoTpl;
	
	//티켓구매 페이지
	@RequestMapping("/transaction/buyTicketTpl.do")
	public String buyTicketTpl() {
		
		return "08Transaction/buyTicketTpl";
	}
	//티켓 구매 트랜잭션 처리
	@RequestMapping("/transaction/buyTicketTplAction.do")
	public String buyTicketTplAction(TicketDTO ticketDTO, Model model) {
		
		//폼값을 한번에 받아서 DAO로 전달
		boolean isBool = daoTpl.buyTicket(ticketDTO);
		if(isBool==true) {
			model.addAttribute("successOrFail", "티켓구매가 정상처리 되었습니다.");
		}
		else {
			model.addAttribute("successOrFail", "티켓구매가 취소 되었습니다. "
					+ " 다시 시도해 주세요.");
		}		
		model.addAttribute("ticketInfo", ticketDTO);		
		return "08Transaction/buyTicketTplAction";
	}
}

