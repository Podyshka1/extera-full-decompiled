package org.telegram.messenger;

import java.util.ArrayList;
import org.telegram.tgnet.TLRPC;

/* JADX INFO: loaded from: classes5.dex */
public class BotInlineKeyboard {

    public enum BackgroundColor {
        NONE,
        PRIMARY,
        SUCCESS,
        DANGER
    }

    /* JADX INFO: loaded from: classes.dex */
    public static abstract class Button {
        public long getIconEmoji() {
            return 0L;
        }

        public int getIconRes() {
            return 0;
        }

        public abstract String getText();

        public BackgroundColor getColor() {
            return BackgroundColor.NONE;
        }
    }

    /* JADX INFO: loaded from: classes.dex */
    public static class ButtonBot extends Button {
        public final TLRPC.KeyboardButton button;

        public ButtonBot(TLRPC.KeyboardButton keyboardButton) {
            this.button = keyboardButton;
        }

        @Override // org.telegram.messenger.BotInlineKeyboard.Button
        public String getText() {
            return this.button.text;
        }

        @Override // org.telegram.messenger.BotInlineKeyboard.Button
        public BackgroundColor getColor() {
            TLRPC.TL_keyboardButtonStyle tL_keyboardButtonStyle = this.button.style;
            if (tL_keyboardButtonStyle != null) {
                if (tL_keyboardButtonStyle.bg_success) {
                    return BackgroundColor.SUCCESS;
                }
                if (tL_keyboardButtonStyle.bg_danger) {
                    return BackgroundColor.DANGER;
                }
                if (tL_keyboardButtonStyle.bg_primary) {
                    return BackgroundColor.PRIMARY;
                }
            }
            return BackgroundColor.NONE;
        }

        @Override // org.telegram.messenger.BotInlineKeyboard.Button
        public long getIconEmoji() {
            TLRPC.TL_keyboardButtonStyle tL_keyboardButtonStyle = this.button.style;
            if (tL_keyboardButtonStyle != null) {
                return tL_keyboardButtonStyle.icon;
            }
            return 0L;
        }
    }

    public static class ButtonCustom extends Button {
        public static final int GIFT_OFFER_ACCEPT = 6;
        public static final int GIFT_OFFER_DECLINE = 5;
        public static final int OPEN_MESSAGE_THREAD = 4;
        public static final int SHARING_OFFER_ACCEPT = 8;
        public static final int SHARING_OFFER_DECLINE = 7;
        public static final int SUGGESTION_ACCEPT = 2;
        public static final int SUGGESTION_DECLINE = 1;
        public static final int SUGGESTION_EDIT = 3;
        public final int icon;
        public final int id;
        public final int text;

        public ButtonCustom(int i, int i2, int i3) {
            this.id = i;
            this.text = i2;
            this.icon = i3;
        }

        @Override // org.telegram.messenger.BotInlineKeyboard.Button
        public String getText() {
            return LocaleController.getString(this.text);
        }

        @Override // org.telegram.messenger.BotInlineKeyboard.Button
        public int getIconRes() {
            return this.icon;
        }
    }

    /* JADX INFO: loaded from: classes.dex */
    public interface Source {
        Button getButton(int i, int i2);

        int getColumnsCount(int i);

        int getRowsCount();

        boolean hasSeparator(int i);

        default boolean isEmpty() {
            return getRowsCount() == 0;
        }
    }

    /* JADX INFO: loaded from: classes.dex */
    public static class KeyboardSourceArray implements Source {
        private final Button[][] buttons;
        private final int separators;

        private KeyboardSourceArray(Button[][] buttonArr, int i) {
            this.buttons = buttonArr;
            this.separators = i;
        }

        @Override // org.telegram.messenger.BotInlineKeyboard.Source
        public int getRowsCount() {
            return this.buttons.length;
        }

        @Override // org.telegram.messenger.BotInlineKeyboard.Source
        public int getColumnsCount(int i) {
            return this.buttons[i].length;
        }

        @Override // org.telegram.messenger.BotInlineKeyboard.Source
        public Button getButton(int i, int i2) {
            return this.buttons[i][i2];
        }

        @Override // org.telegram.messenger.BotInlineKeyboard.Source
        public boolean hasSeparator(int i) {
            return (this.separators & (1 << i)) != 0;
        }
    }

    /* JADX INFO: loaded from: classes.dex */
    public static class Builder {
        private final ArrayList<Button[]> buttons = new ArrayList<>();
        private int separators;

        public void addBotKeyboard(TLRPC.TL_replyInlineMarkup tL_replyInlineMarkup) {
            for (int i = 0; i < tL_replyInlineMarkup.rows.size(); i++) {
                ArrayList<TLRPC.KeyboardButton> arrayList = tL_replyInlineMarkup.rows.get(i).buttons;
                ButtonBot[] buttonBotArr = new ButtonBot[arrayList.size()];
                for (int i2 = 0; i2 < arrayList.size(); i2++) {
                    buttonBotArr[i2] = new ButtonBot(arrayList.get(i2));
                }
                this.buttons.add(buttonBotArr);
            }
        }

        public void addSuggestionKeyboard() {
            this.buttons.add(new Button[]{new ButtonCustom(1, C2573R.string.PostSuggestionsInlineDecline, C2573R.drawable.filled_bot_decline_24), new ButtonCustom(2, C2573R.string.PostSuggestionsInlineAccept, C2573R.drawable.filled_bot_approve_24)});
            this.buttons.add(new Button[]{new ButtonCustom(3, C2573R.string.PostSuggestionsInlineEdit, C2573R.drawable.filled_bot_suggest_24)});
        }

        public void addGiftOfferKeyboard() {
            this.buttons.add(new Button[]{new ButtonCustom(5, C2573R.string.GiftOfferDecline, C2573R.drawable.filled_bot_decline_24), new ButtonCustom(6, C2573R.string.GiftOfferAccept, C2573R.drawable.filled_bot_approve_24)});
        }

        public void addSharingOfferKeyboard() {
            this.buttons.add(new Button[]{new ButtonCustom(7, C2573R.string.DisableSharingOfferDecline, C2573R.drawable.filled_bot_decline_24), new ButtonCustom(8, C2573R.string.DisableSharingOfferAccept, C2573R.drawable.filled_bot_approve_24)});
        }

        public void addContinueThreadKeyboard() {
            this.buttons.add(new Button[]{new ButtonCustom(4, C2573R.string.BotForumContinueChat, 0)});
        }

        public void addKeyboardSource(Source source) {
            if (source == null) {
                return;
            }
            int rowsCount = source.getRowsCount();
            for (int i = 0; i < rowsCount; i++) {
                int columnsCount = source.getColumnsCount(i);
                Button[] buttonArr = new Button[columnsCount];
                for (int i2 = 0; i2 < columnsCount; i2++) {
                    buttonArr[i2] = source.getButton(i, i2);
                }
                this.buttons.add(buttonArr);
                if (source.hasSeparator(i)) {
                    addSeparator();
                }
            }
        }

        public void addSeparator() {
            if (this.buttons.isEmpty()) {
                return;
            }
            this.separators |= 1 << (this.buttons.size() - 1);
        }

        public boolean isEmpty() {
            return this.buttons.isEmpty();
        }

        public boolean isNotEmpty() {
            return !this.buttons.isEmpty();
        }

        public Source build() {
            ArrayList<Button[]> arrayList = this.buttons;
            return new KeyboardSourceArray((Button[][]) arrayList.toArray(new Button[arrayList.size()][]), this.separators);
        }
    }
}
