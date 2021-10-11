package ru.malyushov.client;

import org.springframework.context.annotation.ComponentScan;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;
import ru.malyushov.model.ExchangeRates;


public interface OpenExchangeRatesClient {

    ExchangeRates getLatestRates(String appId);

    ExchangeRates getHistoricalRates(String date, String appId);
}
