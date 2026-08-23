package com.yandex.mapkit.transport.masstransit;

import com.yandex.mapkit.Money;
import com.yandex.runtime.bindings.Archive;
import com.yandex.runtime.bindings.Serializable;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public class Payment implements Serializable {
    private PaymentMedia paymentMedia;
    private Money price;

    public Payment(PaymentMedia paymentMedia, Money money) {
        if (money == null) {
            f$$ExternalSyntheticBUOutline1.m178m("Required field \"price\" cannot be null");
            throw null;
        }
        this.paymentMedia = paymentMedia;
        this.price = money;
    }

    public Payment() {
    }

    public PaymentMedia getPaymentMedia() {
        return this.paymentMedia;
    }

    public Money getPrice() {
        return this.price;
    }

    @Override // com.yandex.runtime.bindings.Serializable
    public void serialize(Archive archive) {
        this.paymentMedia = (PaymentMedia) archive.add(this.paymentMedia, true, (Class<PaymentMedia>) PaymentMedia.class);
        this.price = (Money) archive.add(this.price, false, (Class<Money>) Money.class);
    }
}
