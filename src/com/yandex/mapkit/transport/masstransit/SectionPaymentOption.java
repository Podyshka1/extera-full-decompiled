package com.yandex.mapkit.transport.masstransit;

import com.yandex.runtime.bindings.Archive;
import com.yandex.runtime.bindings.Serializable;

/* JADX INFO: loaded from: classes5.dex */
public class SectionPaymentOption implements Serializable {
    private Payment payment;

    public SectionPaymentOption(Payment payment) {
        this.payment = payment;
    }

    public SectionPaymentOption() {
    }

    public Payment getPayment() {
        return this.payment;
    }

    @Override // com.yandex.runtime.bindings.Serializable
    public void serialize(Archive archive) {
        this.payment = (Payment) archive.add(this.payment, true, (Class<Payment>) Payment.class);
    }
}
