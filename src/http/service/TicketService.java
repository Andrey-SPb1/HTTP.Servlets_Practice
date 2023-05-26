package http.service;

import http.dao.TicketDao;
import http.dto.TicketDto;
import http.entity.Ticket;

import java.util.List;
import java.util.stream.Collectors;

import static java.util.stream.Collectors.*;

public class TicketService {

    private static final TicketService INSTANCE = new TicketService();
    private final TicketDao ticketDao = TicketDao.getInstance();

    private TicketService() {
    }

    public List<TicketDto> findAllByFlightId(Long flightId) {
        return ticketDao.findAllByFlightId(flightId).stream()
                .map(ticket -> TicketDto.builder()
                        .id(ticket.getId())
                        .flightId(ticket.getFlight_id())
                        .seatNo(ticket.getSeatNo())
                        .build()
                )
                .collect(toList());
    }

    public static TicketService getInstance() {
        return INSTANCE;
    }
}
