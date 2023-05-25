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
                .map(ticket -> new TicketDto(
                        ticket.getId(),
                        ticket.getFlight_id(),
                        ticket.getSeatNo()
                ))
                .collect(toList());
    }

    public static TicketService getInstance() {
        return INSTANCE;
    }
}
