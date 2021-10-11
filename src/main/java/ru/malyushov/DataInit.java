package ru.malyushov;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import ru.malyushov.service.serviceinterface.ExchangeRatesService;

import javax.annotation.PostConstruct;

@Component
public class DataInit {

    private ExchangeRatesService exchangeRatesService;

    @Autowired
    public DataInit(ExchangeRatesService exchangeRatesService) {
        this.exchangeRatesService = exchangeRatesService;
    }

    @PostConstruct
    public void firstDataInit() {
        exchangeRatesService.refreshRates();
    }
}