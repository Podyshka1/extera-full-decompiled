package org.telegram.messenger;

import org.telegram.messenger.utils.tlutils.AmountUtils$Amount;
import org.telegram.messenger.utils.tlutils.AmountUtils$Currency;
import org.telegram.tgnet.TLRPC;

/* JADX INFO: loaded from: classes.dex */
public class MessageSuggestionParams {
    public final AmountUtils$Amount amount;
    public final long time;

    private MessageSuggestionParams(AmountUtils$Amount amountUtils$Amount, long j) {
        this.amount = amountUtils$Amount;
        this.time = j;
    }

    public TLRPC.SuggestedPost toTl() {
        TLRPC.SuggestedPost suggestedPost = new TLRPC.SuggestedPost();
        AmountUtils$Amount amountUtils$Amount = this.amount;
        if (amountUtils$Amount != null && !amountUtils$Amount.isZero()) {
            suggestedPost.price = this.amount.toTl();
        }
        long j = this.time;
        if (j > 0) {
            suggestedPost.schedule_date = (int) j;
            suggestedPost.flags |= 1;
        }
        return suggestedPost;
    }

    public boolean isEmpty() {
        AmountUtils$Amount amountUtils$Amount = this.amount;
        return (amountUtils$Amount == null || amountUtils$Amount.isZero()) && this.time <= 0;
    }

    public static MessageSuggestionParams empty() {
        return new MessageSuggestionParams(AmountUtils$Amount.fromDecimal(0L, AmountUtils$Currency.STARS), 0L);
    }

    /* JADX INFO: renamed from: of */
    public static MessageSuggestionParams m1154of(TLRPC.SuggestedPost suggestedPost) {
        if (suggestedPost == null) {
            return empty();
        }
        return new MessageSuggestionParams(AmountUtils$Amount.m1197of(suggestedPost.price), suggestedPost.schedule_date);
    }

    /* JADX INFO: renamed from: of */
    public static MessageSuggestionParams m1155of(TLRPC.TL_messageActionSuggestedPostApproval tL_messageActionSuggestedPostApproval) {
        return m1153of(AmountUtils$Amount.m1197of(tL_messageActionSuggestedPostApproval.price), tL_messageActionSuggestedPostApproval.schedule_date);
    }

    /* JADX INFO: renamed from: of */
    public static MessageSuggestionParams m1153of(AmountUtils$Amount amountUtils$Amount, long j) {
        return new MessageSuggestionParams(amountUtils$Amount, j);
    }
}
