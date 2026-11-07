package com.exteragram.messenger.security;

import android.os.SystemClock;
import java.nio.ByteBuffer;
import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.function.Predicate;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.Utilities;
import org.telegram.tgnet.NativeByteBuffer;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;

/* JADX INFO: loaded from: classes4.dex */
public abstract class SensitivePaymentForms {
    private static final LinkedHashMap<String, Payment> payments = new LinkedHashMap<>();
    private static final long[] generations = new long[16];

    public static final class Request {
        final long generation;
        final String invoiceHash;
        final long userId;

        public Request(long j, long j2, String str) {
            this.userId = j;
            this.generation = j2;
            this.invoiceHash = str;
        }
    }

    public static synchronized Request capture(int i, TLObject tLObject, NativeByteBuffer nativeByteBuffer) {
        if (!(tLObject instanceof TLRPC.TL_payments_getPaymentForm)) {
            return null;
        }
        TLRPC.InputInvoice inputInvoice = ((TLRPC.TL_payments_getPaymentForm) tLObject).invoice;
        if (inputInvoice == null) {
            return null;
        }
        try {
            int objectSize = inputInvoice.getObjectSize();
            if (objectSize > 0 && objectSize <= nativeByteBuffer.position() - 8) {
                ByteBuffer byteBufferDuplicate = nativeByteBuffer.buffer.duplicate();
                byteBufferDuplicate.position(8);
                byteBufferDuplicate.limit(objectSize + 8);
                MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
                messageDigest.update(byteBufferDuplicate);
                return new Request(UserConfig.getInstance(i).getClientUserId(), generations[i], Utilities.bytesToHex(messageDigest.digest()));
            }
            return null;
        } catch (Exception unused) {
            return null;
        }
    }

    public static final class Payment {
        final long amount;
        final long created = SystemClock.elapsedRealtime();
        final String currency;
        final String invoiceHash;

        public Payment(long j, String str, String str2) {
            this.amount = j;
            this.currency = str;
            this.invoiceHash = str2;
        }
    }

    public static synchronized void remember(int i, Request request, TLObject tLObject) {
        ArrayList<TLRPC.TL_labeledPrice> arrayList;
        if (request != null) {
            try {
                if (request.generation == generations[i] && request.userId == UserConfig.getInstance(i).getClientUserId() && (tLObject instanceof TLRPC.PaymentForm)) {
                    TLRPC.PaymentForm paymentForm = (TLRPC.PaymentForm) tLObject;
                    if ((paymentForm instanceof TLRPC.TL_payments_paymentFormStarGift) || (paymentForm instanceof TLRPC.TL_payments_paymentFormStars)) {
                        TLRPC.TL_invoice tL_invoice = paymentForm.invoice;
                        if (tL_invoice != null && (arrayList = tL_invoice.prices) != null && !arrayList.isEmpty()) {
                            try {
                                ArrayList<TLRPC.TL_labeledPrice> arrayList2 = paymentForm.invoice.prices;
                                int size = arrayList2.size();
                                int i2 = 0;
                                long jAddExact = 0;
                                while (i2 < size) {
                                    TLRPC.TL_labeledPrice tL_labeledPrice = arrayList2.get(i2);
                                    i2++;
                                    TLRPC.TL_labeledPrice tL_labeledPrice2 = tL_labeledPrice;
                                    if (tL_labeledPrice2 == null) {
                                        return;
                                    } else {
                                        jAddExact = Math.addExact(jAddExact, tL_labeledPrice2.amount);
                                    }
                                }
                                if (jAddExact < 0) {
                                    return;
                                }
                                payments.put(i + ":" + UserConfig.getInstance(i).getClientUserId() + ":" + paymentForm.form_id, new Payment(jAddExact, paymentForm.invoice.currency, request.invoiceHash));
                                while (true) {
                                    LinkedHashMap<String, Payment> linkedHashMap = payments;
                                    if (linkedHashMap.size() <= 128) {
                                        return;
                                    } else {
                                        linkedHashMap.remove(linkedHashMap.keySet().iterator().next());
                                    }
                                }
                            } catch (ArithmeticException unused) {
                            }
                        }
                    }
                }
            } finally {
            }
        }
    }

    public static synchronized Payment get(int i, long j, String str) {
        String str2 = i + ":" + UserConfig.getInstance(i).getClientUserId() + ":" + j;
        LinkedHashMap<String, Payment> linkedHashMap = payments;
        Payment payment = linkedHashMap.get(str2);
        if (payment != null && SystemClock.elapsedRealtime() - payment.created > 900000) {
            linkedHashMap.remove(str2);
            return null;
        }
        if (payment == null || !payment.invoiceHash.equals(str)) {
            payment = null;
        }
        return payment;
    }

    public static synchronized void clear(int i) {
        long[] jArr = generations;
        jArr[i] = jArr[i] + 1;
        final String str = i + ":";
        payments.keySet().removeIf(new Predicate() { // from class: com.exteragram.messenger.security.SensitivePaymentForms$$ExternalSyntheticLambda0
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return ((String) obj).startsWith(str);
            }
        });
    }
}
