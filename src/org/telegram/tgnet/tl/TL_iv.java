package org.telegram.tgnet.tl;

import android.graphics.Bitmap;
import com.exteragram.messenger.export.api.C1324x420a2707;
import java.io.File;
import java.util.ArrayList;
import org.telegram.messenger.RichQuote$$ExternalSyntheticLambda0;
import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.TLMethod;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.TLRPC$TL_inputMediaUploadedDocument$$ExternalSyntheticLambda0;
import org.telegram.tgnet.TLRPC$TL_inputPrivacyValueAllowUsers$$ExternalSyntheticLambda0;
import org.telegram.tgnet.TLRPC$TL_photos_photos$$ExternalSyntheticLambda0;
import org.telegram.tgnet.Vector;
import org.telegram.tgnet.tl.TL_iv;
import org.telegram.tgnet.tl.TL_keyboard;

/* JADX INFO: loaded from: classes6.dex */
public class TL_iv {

    /* JADX INFO: loaded from: classes.dex */
    public static abstract class Page extends TLObject {
        public int flags;
        public File local;
        public boolean part;
        public boolean rtl;
        public String url;
        public boolean v2;
        public int views;
        public boolean web;
        public ArrayList<PageBlock> blocks = new ArrayList<>();
        public ArrayList<TLRPC.Photo> photos = new ArrayList<>();
        public ArrayList<TLRPC.Document> documents = new ArrayList<>();

        private static Page fromConstructor(int i) {
            switch (i) {
                case TL_pagePart_layer67.constructor /* -1913754556 */:
                    return new TL_pagePart_layer67();
                case TL_pagePart_layer82.constructor /* -1908433218 */:
                    return new TL_pagePart_layer82();
                case TL_page.constructor /* -1738178803 */:
                    return new TL_page();
                case TL_page_layer110.constructor /* -1366746132 */:
                    return new TL_page_layer110();
                case TL_pageFull_layer67.constructor /* -677274263 */:
                    return new TL_pageFull_layer67();
                case TL_page_layer88.constructor /* -241590104 */:
                    return new TL_page_layer88();
                case TL_pageFull_layer82.constructor /* 1433323434 */:
                    return new TL_pageFull_layer82();
                default:
                    return null;
            }
        }

        public static Page TLdeserialize(InputSerializedData inputSerializedData, int i, boolean z) {
            return (Page) TLObject.TLdeserialize(Page.class, fromConstructor(i), inputSerializedData, i, z);
        }
    }

    /* JADX INFO: loaded from: classes.dex */
    public static class TL_page extends Page {
        public static final int constructor = -1738178803;

        @Override // org.telegram.tgnet.TLObject
        public void readParams(InputSerializedData inputSerializedData, boolean z) {
            int int32 = inputSerializedData.readInt32(z);
            this.flags = int32;
            this.part = TLObject.hasFlag(int32, 1);
            this.rtl = TLObject.hasFlag(this.flags, 2);
            this.v2 = TLObject.hasFlag(this.flags, 4);
            this.url = inputSerializedData.readString(z);
            this.blocks = Vector.deserialize(inputSerializedData, new TL_iv$RichMessage$$ExternalSyntheticLambda0(), z);
            this.photos = Vector.deserialize(inputSerializedData, new TLRPC$TL_photos_photos$$ExternalSyntheticLambda0(), z);
            this.documents = Vector.deserialize(inputSerializedData, new C1324x420a2707(), z);
            if (TLObject.hasFlag(this.flags, 8)) {
                this.views = inputSerializedData.readInt32(z);
            }
        }

        @Override // org.telegram.tgnet.TLObject
        public void serializeToStream(OutputSerializedData outputSerializedData) {
            outputSerializedData.writeInt32(constructor);
            int flag = TLObject.setFlag(this.flags, 1, this.part);
            this.flags = flag;
            int flag2 = TLObject.setFlag(flag, 2, this.rtl);
            this.flags = flag2;
            int flag3 = TLObject.setFlag(flag2, 4, this.v2);
            this.flags = flag3;
            outputSerializedData.writeInt32(flag3);
            outputSerializedData.writeString(this.url);
            Vector.serialize(outputSerializedData, this.blocks);
            Vector.serialize(outputSerializedData, this.photos);
            Vector.serialize(outputSerializedData, this.documents);
            if (TLObject.hasFlag(this.flags, 8)) {
                outputSerializedData.writeInt32(this.views);
            }
        }
    }

    public static class TL_page_layer110 extends TL_page {
        public static final int constructor = -1366746132;

        @Override // org.telegram.tgnet.tl.TL_iv.TL_page, org.telegram.tgnet.TLObject
        public void readParams(InputSerializedData inputSerializedData, boolean z) {
            int int32 = inputSerializedData.readInt32(z);
            this.flags = int32;
            this.part = TLObject.hasFlag(int32, 1);
            this.rtl = TLObject.hasFlag(this.flags, 2);
            this.url = inputSerializedData.readString(z);
            this.blocks = Vector.deserialize(inputSerializedData, new TL_iv$RichMessage$$ExternalSyntheticLambda0(), z);
            this.photos = Vector.deserialize(inputSerializedData, new TLRPC$TL_photos_photos$$ExternalSyntheticLambda0(), z);
            this.documents = Vector.deserialize(inputSerializedData, new C1324x420a2707(), z);
        }

        @Override // org.telegram.tgnet.tl.TL_iv.TL_page, org.telegram.tgnet.TLObject
        public void serializeToStream(OutputSerializedData outputSerializedData) {
            outputSerializedData.writeInt32(constructor);
            int flag = TLObject.setFlag(this.flags, 1, this.part);
            this.flags = flag;
            int flag2 = TLObject.setFlag(flag, 2, this.rtl);
            this.flags = flag2;
            outputSerializedData.writeInt32(flag2);
            outputSerializedData.writeString(this.url);
            Vector.serialize(outputSerializedData, this.blocks);
            Vector.serialize(outputSerializedData, this.photos);
            Vector.serialize(outputSerializedData, this.documents);
        }
    }

    public static class TL_page_layer88 extends TL_page {
        public static final int constructor = -241590104;

        @Override // org.telegram.tgnet.tl.TL_iv.TL_page, org.telegram.tgnet.TLObject
        public void readParams(InputSerializedData inputSerializedData, boolean z) {
            int int32 = inputSerializedData.readInt32(z);
            this.flags = int32;
            this.part = TLObject.hasFlag(int32, 1);
            this.rtl = TLObject.hasFlag(this.flags, 2);
            this.v2 = TLObject.hasFlag(this.flags, 4);
            this.blocks = Vector.deserialize(inputSerializedData, new TL_iv$RichMessage$$ExternalSyntheticLambda0(), z);
            this.photos = Vector.deserialize(inputSerializedData, new TLRPC$TL_photos_photos$$ExternalSyntheticLambda0(), z);
            this.documents = Vector.deserialize(inputSerializedData, new C1324x420a2707(), z);
        }

        @Override // org.telegram.tgnet.tl.TL_iv.TL_page, org.telegram.tgnet.TLObject
        public void serializeToStream(OutputSerializedData outputSerializedData) {
            outputSerializedData.writeInt32(constructor);
            int flag = TLObject.setFlag(this.flags, 1, this.part);
            this.flags = flag;
            int flag2 = TLObject.setFlag(flag, 2, this.rtl);
            this.flags = flag2;
            int flag3 = TLObject.setFlag(flag2, 4, this.v2);
            this.flags = flag3;
            outputSerializedData.writeInt32(flag3);
            Vector.serialize(outputSerializedData, this.blocks);
            Vector.serialize(outputSerializedData, this.photos);
            Vector.serialize(outputSerializedData, this.documents);
        }
    }

    public static class TL_pagePart_layer82 extends TL_page {
        public static final int constructor = -1908433218;

        @Override // org.telegram.tgnet.tl.TL_iv.TL_page, org.telegram.tgnet.TLObject
        public void readParams(InputSerializedData inputSerializedData, boolean z) {
            this.part = true;
            this.blocks = Vector.deserialize(inputSerializedData, new TL_iv$RichMessage$$ExternalSyntheticLambda0(), z);
            this.photos = Vector.deserialize(inputSerializedData, new TLRPC$TL_photos_photos$$ExternalSyntheticLambda0(), z);
            this.documents = Vector.deserialize(inputSerializedData, new C1324x420a2707(), z);
        }

        @Override // org.telegram.tgnet.tl.TL_iv.TL_page, org.telegram.tgnet.TLObject
        public void serializeToStream(OutputSerializedData outputSerializedData) {
            outputSerializedData.writeInt32(constructor);
            Vector.serialize(outputSerializedData, this.blocks);
            Vector.serialize(outputSerializedData, this.photos);
            Vector.serialize(outputSerializedData, this.documents);
        }
    }

    public static class TL_pagePart_layer67 extends TL_pagePart_layer82 {
        public static final int constructor = -1913754556;

        @Override // org.telegram.tgnet.tl.TL_iv.TL_pagePart_layer82, org.telegram.tgnet.tl.TL_iv.TL_page, org.telegram.tgnet.TLObject
        public void readParams(InputSerializedData inputSerializedData, boolean z) {
            this.part = true;
            this.blocks = Vector.deserialize(inputSerializedData, new TL_iv$RichMessage$$ExternalSyntheticLambda0(), z);
            this.photos = Vector.deserialize(inputSerializedData, new TLRPC$TL_photos_photos$$ExternalSyntheticLambda0(), z);
            this.documents = Vector.deserialize(inputSerializedData, new C1324x420a2707(), z);
        }

        @Override // org.telegram.tgnet.tl.TL_iv.TL_pagePart_layer82, org.telegram.tgnet.tl.TL_iv.TL_page, org.telegram.tgnet.TLObject
        public void serializeToStream(OutputSerializedData outputSerializedData) {
            outputSerializedData.writeInt32(constructor);
            Vector.serialize(outputSerializedData, this.blocks);
            Vector.serialize(outputSerializedData, this.photos);
            Vector.serialize(outputSerializedData, this.documents);
        }
    }

    public static class TL_pageFull_layer82 extends TL_page {
        public static final int constructor = 1433323434;

        @Override // org.telegram.tgnet.tl.TL_iv.TL_page, org.telegram.tgnet.TLObject
        public void readParams(InputSerializedData inputSerializedData, boolean z) {
            this.blocks = Vector.deserialize(inputSerializedData, new TL_iv$RichMessage$$ExternalSyntheticLambda0(), z);
            this.photos = Vector.deserialize(inputSerializedData, new TLRPC$TL_photos_photos$$ExternalSyntheticLambda0(), z);
            this.documents = Vector.deserialize(inputSerializedData, new C1324x420a2707(), z);
        }

        @Override // org.telegram.tgnet.tl.TL_iv.TL_page, org.telegram.tgnet.TLObject
        public void serializeToStream(OutputSerializedData outputSerializedData) {
            outputSerializedData.writeInt32(constructor);
            Vector.serialize(outputSerializedData, this.blocks);
            Vector.serialize(outputSerializedData, this.photos);
            Vector.serialize(outputSerializedData, this.documents);
        }
    }

    public static class TL_pageFull_layer67 extends TL_page {
        public static final int constructor = -677274263;

        @Override // org.telegram.tgnet.tl.TL_iv.TL_page, org.telegram.tgnet.TLObject
        public void readParams(InputSerializedData inputSerializedData, boolean z) {
            this.blocks = Vector.deserialize(inputSerializedData, new TL_iv$RichMessage$$ExternalSyntheticLambda0(), z);
            this.photos = Vector.deserialize(inputSerializedData, new TLRPC$TL_photos_photos$$ExternalSyntheticLambda0(), z);
            this.documents = Vector.deserialize(inputSerializedData, new C1324x420a2707(), z);
        }

        @Override // org.telegram.tgnet.tl.TL_iv.TL_page, org.telegram.tgnet.TLObject
        public void serializeToStream(OutputSerializedData outputSerializedData) {
            outputSerializedData.writeInt32(constructor);
            Vector.serialize(outputSerializedData, this.blocks);
            Vector.serialize(outputSerializedData, this.photos);
            Vector.serialize(outputSerializedData, this.documents);
        }
    }

    /* JADX INFO: loaded from: classes.dex */
    public static class RichMessage extends TLObject {
        public static final int constructor = -1158439541;
        public int flags;
        public boolean part;
        public boolean rtl;
        public ArrayList<PageBlock> blocks = new ArrayList<>();
        public ArrayList<TLRPC.Photo> photos = new ArrayList<>();
        public ArrayList<TLRPC.Document> documents = new ArrayList<>();

        public static RichMessage TLdeserialize(InputSerializedData inputSerializedData, int i, boolean z) {
            return (RichMessage) TLObject.TLdeserialize(RichMessage.class, i != -1158439541 ? null : new RichMessage(), inputSerializedData, i, z);
        }

        @Override // org.telegram.tgnet.TLObject
        public void readParams(InputSerializedData inputSerializedData, boolean z) {
            int int32 = inputSerializedData.readInt32(z);
            this.flags = int32;
            this.rtl = TLObject.hasFlag(int32, 1);
            this.part = TLObject.hasFlag(this.flags, 2);
            this.blocks = Vector.deserialize(inputSerializedData, new TL_iv$RichMessage$$ExternalSyntheticLambda0(), z);
            this.photos = Vector.deserialize(inputSerializedData, new TLRPC$TL_photos_photos$$ExternalSyntheticLambda0(), z);
            this.documents = Vector.deserialize(inputSerializedData, new C1324x420a2707(), z);
        }

        @Override // org.telegram.tgnet.TLObject
        public void serializeToStream(OutputSerializedData outputSerializedData) {
            outputSerializedData.writeInt32(constructor);
            int flag = TLObject.setFlag(this.flags, 1, this.rtl);
            this.flags = flag;
            int flag2 = TLObject.setFlag(flag, 2, this.part);
            this.flags = flag2;
            outputSerializedData.writeInt32(flag2);
            Vector.serialize(outputSerializedData, this.blocks);
            Vector.serialize(outputSerializedData, this.photos);
            Vector.serialize(outputSerializedData, this.documents);
        }
    }

    /* JADX INFO: loaded from: classes.dex */
    public static class TL_inputRichMessage extends TLObject {
        public static final int constructor = -456898052;
        public int flags;
        public boolean noautolink;
        public boolean rtl;
        public ArrayList<PageBlock> blocks = new ArrayList<>();
        public ArrayList<TLRPC.InputPhoto> photos = new ArrayList<>();
        public ArrayList<TLRPC.InputDocument> documents = new ArrayList<>();
        public ArrayList<TLRPC.InputUser> users = new ArrayList<>();

        public static TL_inputRichMessage TLdeserialize(InputSerializedData inputSerializedData, int i, boolean z) {
            return (TL_inputRichMessage) TLObject.TLdeserialize(TL_inputRichMessage.class, i != -456898052 ? null : new TL_inputRichMessage(), inputSerializedData, i, z);
        }

        @Override // org.telegram.tgnet.TLObject
        public void readParams(InputSerializedData inputSerializedData, boolean z) {
            int int32 = inputSerializedData.readInt32(z);
            this.flags = int32;
            this.rtl = TLObject.hasFlag(int32, 1);
            this.noautolink = TLObject.hasFlag(this.flags, 2);
            this.blocks = Vector.deserialize(inputSerializedData, new TL_iv$RichMessage$$ExternalSyntheticLambda0(), z);
            if (TLObject.hasFlag(this.flags, 4)) {
                this.photos = Vector.deserialize(inputSerializedData, new Vector.TLDeserializer() { // from class: org.telegram.tgnet.tl.TL_iv$TL_inputRichMessage$$ExternalSyntheticLambda0
                    @Override // org.telegram.tgnet.Vector.TLDeserializer
                    public final TLObject deserialize(InputSerializedData inputSerializedData2, int i, boolean z2) {
                        return TLRPC.InputPhoto.TLdeserialize(inputSerializedData2, i, z2);
                    }
                }, z);
            }
            if (TLObject.hasFlag(this.flags, 8)) {
                this.documents = Vector.deserialize(inputSerializedData, new TLRPC$TL_inputMediaUploadedDocument$$ExternalSyntheticLambda0(), z);
            }
            if (TLObject.hasFlag(this.flags, 16)) {
                this.users = Vector.deserialize(inputSerializedData, new TLRPC$TL_inputPrivacyValueAllowUsers$$ExternalSyntheticLambda0(), z);
            }
        }

        @Override // org.telegram.tgnet.TLObject
        public void serializeToStream(OutputSerializedData outputSerializedData) {
            outputSerializedData.writeInt32(constructor);
            int flag = TLObject.setFlag(this.flags, 1, this.rtl);
            this.flags = flag;
            int flag2 = TLObject.setFlag(flag, 2, this.noautolink);
            this.flags = flag2;
            outputSerializedData.writeInt32(flag2);
            Vector.serialize(outputSerializedData, this.blocks);
            if (TLObject.hasFlag(this.flags, 4)) {
                Vector.serialize(outputSerializedData, this.photos);
            }
            if (TLObject.hasFlag(this.flags, 8)) {
                Vector.serialize(outputSerializedData, this.documents);
            }
            if (TLObject.hasFlag(this.flags, 16)) {
                Vector.serialize(outputSerializedData, this.users);
            }
        }
    }

    /* JADX INFO: loaded from: classes.dex */
    public static abstract class RichText extends TLObject {
        public String email;
        public RichText parentRichText;
        public RichText text;
        public ArrayList<RichText> texts = new ArrayList<>();
        public String url;
        public long webpage_id;

        private static RichText fromConstructor(int i) {
            switch (i) {
                case textDiff.constructor /* -1769551024 */:
                    return new textDiff();
                case textStrike.constructor /* -1678197867 */:
                    return new textStrike();
                case textMath.constructor /* -1657885545 */:
                    return new textMath();
                case textCustomEmoji.constructor /* -1570679104 */:
                    return new textCustomEmoji();
                case textDate.constructor /* -1514906069 */:
                    return new textDate();
                case textAutoUrl.constructor /* -1402305622 */:
                    return new textAutoUrl();
                case textButton.constructor /* -1345872682 */:
                    return new textButton();
                case textBankCard.constructor /* -1185513171 */:
                    return new textBankCard();
                case textUnderline.constructor /* -1054465340 */:
                    return new textUnderline();
                case textAutoEmail.constructor /* -984177571 */:
                    return new textAutoEmail();
                case textSuperscript.constructor /* -939827711 */:
                    return new textSuperscript();
                case textMention.constructor /* -853225660 */:
                    return new textMention();
                case textItalic.constructor /* -653089380 */:
                    return new textItalic();
                case textEmpty.constructor /* -599948721 */:
                    return new textEmpty();
                case textEmail.constructor /* -564523562 */:
                    return new textEmail();
                case textSubscript.constructor /* -311786236 */:
                    return new textSubscript();
                case textMentionName.constructor /* 27917308 */:
                    return new textMentionName();
                case textBotCommand.constructor /* 50276819 */:
                    return new textBotCommand();
                case textMarked.constructor /* 55281185 */:
                    return new textMarked();
                case textImage.constructor /* 136105807 */:
                    return new textImage();
                case textPhone.constructor /* 483104362 */:
                    return new textPhone();
                case textAutoPhone.constructor /* 616720265 */:
                    return new textAutoPhone();
                case textAnchor.constructor /* 894777186 */:
                    return new textAnchor();
                case textUrl.constructor /* 1009288385 */:
                    return new textUrl();
                case textTonAddress.constructor /* 1020437354 */:
                    return new textTonAddress();
                case textSpoiler.constructor /* 1277844834 */:
                    return new textSpoiler();
                case textHashtag.constructor /* 1368728810 */:
                    return new textHashtag();
                case textBold.constructor /* 1730456516 */:
                    return new textBold();
                case textFixed.constructor /* 1816074681 */:
                    return new textFixed();
                case textPlain.constructor /* 1950782688 */:
                    return new textPlain();
                case textCashtag.constructor /* 2073958401 */:
                    return new textCashtag();
                case textConcat.constructor /* 2120376535 */:
                    return new textConcat();
                default:
                    return null;
            }
        }

        public static RichText TLdeserialize(InputSerializedData inputSerializedData, int i, boolean z) {
            return (RichText) TLObject.TLdeserialize(RichText.class, fromConstructor(i), inputSerializedData, i, z);
        }
    }

    /* JADX INFO: loaded from: classes.dex */
    public static class textEmpty extends RichText {
        public static final int constructor = -599948721;

        @Override // org.telegram.tgnet.TLObject
        public void serializeToStream(OutputSerializedData outputSerializedData) {
            outputSerializedData.writeInt32(constructor);
        }
    }

    /* JADX INFO: loaded from: classes.dex */
    public static class textPlain extends RichText {
        public static final int constructor = 1950782688;
        public String text;

        @Override // org.telegram.tgnet.TLObject
        public void readParams(InputSerializedData inputSerializedData, boolean z) {
            this.text = inputSerializedData.readString(z);
        }

        @Override // org.telegram.tgnet.TLObject
        public void serializeToStream(OutputSerializedData outputSerializedData) {
            outputSerializedData.writeInt32(constructor);
            outputSerializedData.writeString(this.text);
        }
    }

    /* JADX INFO: loaded from: classes.dex */
    public static class textBold extends RichText {
        public static final int constructor = 1730456516;

        @Override // org.telegram.tgnet.TLObject
        public void readParams(InputSerializedData inputSerializedData, boolean z) {
            this.text = RichText.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
        }

        @Override // org.telegram.tgnet.TLObject
        public void serializeToStream(OutputSerializedData outputSerializedData) {
            outputSerializedData.writeInt32(constructor);
            this.text.serializeToStream(outputSerializedData);
        }
    }

    /* JADX INFO: loaded from: classes.dex */
    public static class textItalic extends RichText {
        public static final int constructor = -653089380;

        @Override // org.telegram.tgnet.TLObject
        public void readParams(InputSerializedData inputSerializedData, boolean z) {
            this.text = RichText.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
        }

        @Override // org.telegram.tgnet.TLObject
        public void serializeToStream(OutputSerializedData outputSerializedData) {
            outputSerializedData.writeInt32(constructor);
            this.text.serializeToStream(outputSerializedData);
        }
    }

    public static class textUnderline extends RichText {
        public static final int constructor = -1054465340;

        @Override // org.telegram.tgnet.TLObject
        public void readParams(InputSerializedData inputSerializedData, boolean z) {
            this.text = RichText.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
        }

        @Override // org.telegram.tgnet.TLObject
        public void serializeToStream(OutputSerializedData outputSerializedData) {
            outputSerializedData.writeInt32(constructor);
            this.text.serializeToStream(outputSerializedData);
        }
    }

    /* JADX INFO: loaded from: classes.dex */
    public static class textStrike extends RichText {
        public static final int constructor = -1678197867;

        @Override // org.telegram.tgnet.TLObject
        public void readParams(InputSerializedData inputSerializedData, boolean z) {
            this.text = RichText.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
        }

        @Override // org.telegram.tgnet.TLObject
        public void serializeToStream(OutputSerializedData outputSerializedData) {
            outputSerializedData.writeInt32(constructor);
            this.text.serializeToStream(outputSerializedData);
        }
    }

    public static class textFixed extends RichText {
        public static final int constructor = 1816074681;

        @Override // org.telegram.tgnet.TLObject
        public void readParams(InputSerializedData inputSerializedData, boolean z) {
            this.text = RichText.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
        }

        @Override // org.telegram.tgnet.TLObject
        public void serializeToStream(OutputSerializedData outputSerializedData) {
            outputSerializedData.writeInt32(constructor);
            this.text.serializeToStream(outputSerializedData);
        }
    }

    /* JADX INFO: loaded from: classes.dex */
    public static class textUrl extends RichText {
        public static final int constructor = 1009288385;

        @Override // org.telegram.tgnet.TLObject
        public void readParams(InputSerializedData inputSerializedData, boolean z) {
            this.text = RichText.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
            this.url = inputSerializedData.readString(z);
            this.webpage_id = inputSerializedData.readInt64(z);
        }

        @Override // org.telegram.tgnet.TLObject
        public void serializeToStream(OutputSerializedData outputSerializedData) {
            outputSerializedData.writeInt32(constructor);
            this.text.serializeToStream(outputSerializedData);
            outputSerializedData.writeString(this.url);
            outputSerializedData.writeInt64(this.webpage_id);
        }
    }

    public static class textEmail extends RichText {
        public static final int constructor = -564523562;

        @Override // org.telegram.tgnet.TLObject
        public void readParams(InputSerializedData inputSerializedData, boolean z) {
            this.text = RichText.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
            this.email = inputSerializedData.readString(z);
        }

        @Override // org.telegram.tgnet.TLObject
        public void serializeToStream(OutputSerializedData outputSerializedData) {
            outputSerializedData.writeInt32(constructor);
            this.text.serializeToStream(outputSerializedData);
            outputSerializedData.writeString(this.email);
        }
    }

    /* JADX INFO: loaded from: classes.dex */
    public static class textConcat extends RichText {
        public static final int constructor = 2120376535;

        @Override // org.telegram.tgnet.TLObject
        public void readParams(InputSerializedData inputSerializedData, boolean z) {
            this.texts = Vector.deserialize(inputSerializedData, new RichQuote$$ExternalSyntheticLambda0(), z);
        }

        @Override // org.telegram.tgnet.TLObject
        public void serializeToStream(OutputSerializedData outputSerializedData) {
            outputSerializedData.writeInt32(constructor);
            Vector.serialize(outputSerializedData, this.texts);
        }
    }

    public static class textSubscript extends RichText {
        public static final int constructor = -311786236;

        @Override // org.telegram.tgnet.TLObject
        public void readParams(InputSerializedData inputSerializedData, boolean z) {
            this.text = RichText.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
        }

        @Override // org.telegram.tgnet.TLObject
        public void serializeToStream(OutputSerializedData outputSerializedData) {
            outputSerializedData.writeInt32(constructor);
            this.text.serializeToStream(outputSerializedData);
        }
    }

    public static class textSuperscript extends RichText {
        public static final int constructor = -939827711;

        @Override // org.telegram.tgnet.TLObject
        public void readParams(InputSerializedData inputSerializedData, boolean z) {
            this.text = RichText.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
        }

        @Override // org.telegram.tgnet.TLObject
        public void serializeToStream(OutputSerializedData outputSerializedData) {
            outputSerializedData.writeInt32(constructor);
            this.text.serializeToStream(outputSerializedData);
        }
    }

    public static class textMarked extends RichText {
        public static final int constructor = 55281185;

        @Override // org.telegram.tgnet.TLObject
        public void readParams(InputSerializedData inputSerializedData, boolean z) {
            this.text = RichText.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
        }

        @Override // org.telegram.tgnet.TLObject
        public void serializeToStream(OutputSerializedData outputSerializedData) {
            outputSerializedData.writeInt32(constructor);
            this.text.serializeToStream(outputSerializedData);
        }
    }

    public static class textPhone extends RichText {
        public static final int constructor = 483104362;
        public String phone;

        @Override // org.telegram.tgnet.TLObject
        public void readParams(InputSerializedData inputSerializedData, boolean z) {
            this.text = RichText.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
            this.phone = inputSerializedData.readString(z);
        }

        @Override // org.telegram.tgnet.TLObject
        public void serializeToStream(OutputSerializedData outputSerializedData) {
            outputSerializedData.writeInt32(constructor);
            this.text.serializeToStream(outputSerializedData);
            outputSerializedData.writeString(this.phone);
        }
    }

    public static class textImage extends RichText {
        public static final int constructor = 136105807;
        public long document_id;

        /* JADX INFO: renamed from: h */
        public int f1052h;
        public long photo_id;

        /* JADX INFO: renamed from: w */
        public int f1053w;

        @Override // org.telegram.tgnet.TLObject
        public void readParams(InputSerializedData inputSerializedData, boolean z) {
            this.document_id = inputSerializedData.readInt64(z);
            this.f1053w = inputSerializedData.readInt32(z);
            this.f1052h = inputSerializedData.readInt32(z);
        }

        @Override // org.telegram.tgnet.TLObject
        public void serializeToStream(OutputSerializedData outputSerializedData) {
            outputSerializedData.writeInt32(constructor);
            outputSerializedData.writeInt64(this.document_id);
            outputSerializedData.writeInt32(this.f1053w);
            outputSerializedData.writeInt32(this.f1052h);
        }
    }

    public static class textAnchor extends RichText {
        public static final int constructor = 894777186;
        public String name;

        @Override // org.telegram.tgnet.TLObject
        public void readParams(InputSerializedData inputSerializedData, boolean z) {
            this.text = RichText.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
            this.name = inputSerializedData.readString(z);
        }

        @Override // org.telegram.tgnet.TLObject
        public void serializeToStream(OutputSerializedData outputSerializedData) {
            outputSerializedData.writeInt32(constructor);
            this.text.serializeToStream(outputSerializedData);
            outputSerializedData.writeString(this.name);
        }
    }

    public static class textMath extends RichText {
        public static final int constructor = -1657885545;
        public Bitmap bitmap;
        public int depth;

        /* JADX INFO: renamed from: h */
        public int f1054h;
        public String source;
        public boolean tried;

        /* JADX INFO: renamed from: w */
        public int f1055w;

        @Override // org.telegram.tgnet.TLObject
        public void readParams(InputSerializedData inputSerializedData, boolean z) {
            this.source = inputSerializedData.readString(z);
        }

        @Override // org.telegram.tgnet.TLObject
        public void serializeToStream(OutputSerializedData outputSerializedData) {
            outputSerializedData.writeInt32(constructor);
            outputSerializedData.writeString(this.source);
        }
    }

    public static class textCustomEmoji extends RichText {
        public static final int constructor = -1570679104;
        public String alt;
        public long document_id;

        @Override // org.telegram.tgnet.TLObject
        public void readParams(InputSerializedData inputSerializedData, boolean z) {
            this.document_id = inputSerializedData.readInt64(z);
            this.alt = inputSerializedData.readString(z);
        }

        @Override // org.telegram.tgnet.TLObject
        public void serializeToStream(OutputSerializedData outputSerializedData) {
            outputSerializedData.writeInt32(constructor);
            outputSerializedData.writeInt64(this.document_id);
            outputSerializedData.writeString(this.alt);
        }
    }

    public static class textSpoiler extends RichText {
        public static final int constructor = 1277844834;

        @Override // org.telegram.tgnet.TLObject
        public void readParams(InputSerializedData inputSerializedData, boolean z) {
            this.text = RichText.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
        }

        @Override // org.telegram.tgnet.TLObject
        public void serializeToStream(OutputSerializedData outputSerializedData) {
            outputSerializedData.writeInt32(constructor);
            this.text.serializeToStream(outputSerializedData);
        }
    }

    public static class textMention extends RichText {
        public static final int constructor = -853225660;

        @Override // org.telegram.tgnet.TLObject
        public void readParams(InputSerializedData inputSerializedData, boolean z) {
            this.text = RichText.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
        }

        @Override // org.telegram.tgnet.TLObject
        public void serializeToStream(OutputSerializedData outputSerializedData) {
            outputSerializedData.writeInt32(constructor);
            this.text.serializeToStream(outputSerializedData);
        }
    }

    public static class textHashtag extends RichText {
        public static final int constructor = 1368728810;

        @Override // org.telegram.tgnet.TLObject
        public void readParams(InputSerializedData inputSerializedData, boolean z) {
            this.text = RichText.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
        }

        @Override // org.telegram.tgnet.TLObject
        public void serializeToStream(OutputSerializedData outputSerializedData) {
            outputSerializedData.writeInt32(constructor);
            this.text.serializeToStream(outputSerializedData);
        }
    }

    public static class textBotCommand extends RichText {
        public static final int constructor = 50276819;

        @Override // org.telegram.tgnet.TLObject
        public void readParams(InputSerializedData inputSerializedData, boolean z) {
            this.text = RichText.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
        }

        @Override // org.telegram.tgnet.TLObject
        public void serializeToStream(OutputSerializedData outputSerializedData) {
            outputSerializedData.writeInt32(constructor);
            this.text.serializeToStream(outputSerializedData);
        }
    }

    public static class textCashtag extends RichText {
        public static final int constructor = 2073958401;

        @Override // org.telegram.tgnet.TLObject
        public void readParams(InputSerializedData inputSerializedData, boolean z) {
            this.text = RichText.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
        }

        @Override // org.telegram.tgnet.TLObject
        public void serializeToStream(OutputSerializedData outputSerializedData) {
            outputSerializedData.writeInt32(constructor);
            this.text.serializeToStream(outputSerializedData);
        }
    }

    public static class textAutoUrl extends RichText {
        public static final int constructor = -1402305622;

        @Override // org.telegram.tgnet.TLObject
        public void readParams(InputSerializedData inputSerializedData, boolean z) {
            this.text = RichText.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
        }

        @Override // org.telegram.tgnet.TLObject
        public void serializeToStream(OutputSerializedData outputSerializedData) {
            outputSerializedData.writeInt32(constructor);
            this.text.serializeToStream(outputSerializedData);
        }
    }

    public static class textAutoEmail extends RichText {
        public static final int constructor = -984177571;

        @Override // org.telegram.tgnet.TLObject
        public void readParams(InputSerializedData inputSerializedData, boolean z) {
            this.text = RichText.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
        }

        @Override // org.telegram.tgnet.TLObject
        public void serializeToStream(OutputSerializedData outputSerializedData) {
            outputSerializedData.writeInt32(constructor);
            this.text.serializeToStream(outputSerializedData);
        }
    }

    public static class textAutoPhone extends RichText {
        public static final int constructor = 616720265;

        @Override // org.telegram.tgnet.TLObject
        public void readParams(InputSerializedData inputSerializedData, boolean z) {
            this.text = RichText.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
        }

        @Override // org.telegram.tgnet.TLObject
        public void serializeToStream(OutputSerializedData outputSerializedData) {
            outputSerializedData.writeInt32(constructor);
            this.text.serializeToStream(outputSerializedData);
        }
    }

    public static class textBankCard extends RichText {
        public static final int constructor = -1185513171;

        @Override // org.telegram.tgnet.TLObject
        public void readParams(InputSerializedData inputSerializedData, boolean z) {
            this.text = RichText.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
        }

        @Override // org.telegram.tgnet.TLObject
        public void serializeToStream(OutputSerializedData outputSerializedData) {
            outputSerializedData.writeInt32(constructor);
            this.text.serializeToStream(outputSerializedData);
        }
    }

    public static class textMentionName extends RichText {
        public static final int constructor = 27917308;
        public long user_id;

        @Override // org.telegram.tgnet.TLObject
        public void readParams(InputSerializedData inputSerializedData, boolean z) {
            this.text = RichText.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
            this.user_id = inputSerializedData.readInt64(z);
        }

        @Override // org.telegram.tgnet.TLObject
        public void serializeToStream(OutputSerializedData outputSerializedData) {
            outputSerializedData.writeInt32(constructor);
            this.text.serializeToStream(outputSerializedData);
            outputSerializedData.writeInt64(this.user_id);
        }
    }

    public static class textDate extends RichText {
        public static final int constructor = -1514906069;
        public int date;
        public boolean day_of_week;
        public int flags;
        public boolean long_date;
        public boolean long_time;
        public boolean relative;
        public boolean short_date;
        public boolean short_time;

        @Override // org.telegram.tgnet.TLObject
        public void readParams(InputSerializedData inputSerializedData, boolean z) {
            int int32 = inputSerializedData.readInt32(z);
            this.flags = int32;
            this.relative = TLObject.hasFlag(int32, 1);
            this.short_time = TLObject.hasFlag(this.flags, 2);
            this.long_time = TLObject.hasFlag(this.flags, 4);
            this.short_date = TLObject.hasFlag(this.flags, 8);
            this.long_date = TLObject.hasFlag(this.flags, 16);
            this.day_of_week = TLObject.hasFlag(this.flags, 32);
            this.text = RichText.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
            this.date = inputSerializedData.readInt32(z);
        }

        @Override // org.telegram.tgnet.TLObject
        public void serializeToStream(OutputSerializedData outputSerializedData) {
            outputSerializedData.writeInt32(constructor);
            int flag = TLObject.setFlag(this.flags, 1, this.relative);
            this.flags = flag;
            int flag2 = TLObject.setFlag(flag, 2, this.short_time);
            this.flags = flag2;
            int flag3 = TLObject.setFlag(flag2, 4, this.long_time);
            this.flags = flag3;
            int flag4 = TLObject.setFlag(flag3, 8, this.short_date);
            this.flags = flag4;
            int flag5 = TLObject.setFlag(flag4, 16, this.long_date);
            this.flags = flag5;
            int flag6 = TLObject.setFlag(flag5, 32, this.day_of_week);
            this.flags = flag6;
            outputSerializedData.writeInt32(flag6);
            this.text.serializeToStream(outputSerializedData);
            outputSerializedData.writeInt32(this.date);
        }
    }

    public static class textDiff extends RichText {
        public static final int constructor = -1769551024;
        public RichText old_text;
        public RichText text;

        @Override // org.telegram.tgnet.TLObject
        public void readParams(InputSerializedData inputSerializedData, boolean z) {
            this.text = RichText.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
            this.old_text = RichText.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
        }

        @Override // org.telegram.tgnet.TLObject
        public void serializeToStream(OutputSerializedData outputSerializedData) {
            outputSerializedData.writeInt32(constructor);
            this.text.serializeToStream(outputSerializedData);
            this.old_text.serializeToStream(outputSerializedData);
        }
    }

    public static class textButton extends RichText implements TL_keyboard.KeyboardButtonProto {
        public static final int constructor = -1345872682;
        public int flags;
        public TL_keyboard.RichButtonStyle style;
        public TL_keyboard.InlineButtonType type;

        @Override // org.telegram.tgnet.TLObject
        public void readParams(InputSerializedData inputSerializedData, boolean z) {
            this.flags = inputSerializedData.readInt32(z);
            this.text = RichText.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
            this.type = TL_keyboard.InlineButtonType.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
            if (TLObject.hasFlag(this.flags, 1)) {
                this.style = TL_keyboard.RichButtonStyle.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
            }
        }

        @Override // org.telegram.tgnet.TLObject
        public void serializeToStream(OutputSerializedData outputSerializedData) {
            outputSerializedData.writeInt32(constructor);
            int flag = TLObject.setFlag(this.flags, 1, this.style != null);
            this.flags = flag;
            outputSerializedData.writeInt32(flag);
            this.text.serializeToStream(outputSerializedData);
            this.type.serializeToStream(outputSerializedData);
            if (TLObject.hasFlag(this.flags, 1)) {
                this.style.serializeToStream(outputSerializedData);
            }
        }

        @Override // org.telegram.tgnet.tl.TL_keyboard.KeyboardButtonProto
        public TL_keyboard.ButtonTypeProto getType() {
            return this.type;
        }

        @Override // org.telegram.tgnet.tl.TL_keyboard.KeyboardButtonProto
        public String getText() {
            RichText richText = this.text;
            if (richText instanceof textPlain) {
                return ((textPlain) richText).text;
            }
            return null;
        }
    }

    public static class textTonAddress extends RichText {
        public static final int constructor = 1020437354;

        @Override // org.telegram.tgnet.TLObject
        public void readParams(InputSerializedData inputSerializedData, boolean z) {
            this.text = RichText.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
        }

        @Override // org.telegram.tgnet.TLObject
        public void serializeToStream(OutputSerializedData outputSerializedData) {
            outputSerializedData.writeInt32(constructor);
            this.text.serializeToStream(outputSerializedData);
        }
    }

    /* JADX INFO: loaded from: classes.dex */
    public static abstract class PageBlock extends TLObject {
        public boolean bottom;
        public int cachedHeight;
        public int cachedWidth;
        public PageCaption caption;
        public boolean first;
        public int groupId;
        public int level;
        public int mid;
        public int quoteLevels;
        public RichText text;
        public TLRPC.PhotoSize thumb;
        public TLObject thumbObject;

        private static PageBlock fromConstructor(int i) {
            switch (i) {
                case pageBlockAudio.constructor /* -2143067670 */:
                    return new pageBlockAudio();
                case pageBlockSubtitle.constructor /* -1879401953 */:
                    return new pageBlockSubtitle();
                case pageBlockOrderedList_layer226.constructor /* -1702174239 */:
                    return new pageBlockOrderedList_layer226();
                case pageBlockMap.constructor /* -1538310410 */:
                    return new pageBlockMap();
                case pageBlockEmbed.constructor /* -1468953147 */:
                    return new pageBlockEmbed();
                case pageBlockHeading4.constructor /* -1254983893 */:
                    return new pageBlockHeading4();
                case pageBlockAuthorDate.constructor /* -1162877472 */:
                    return new pageBlockAuthorDate();
                case pageBlockHeading1.constructor /* -1157691601 */:
                    return new pageBlockHeading1();
                case pageBlockTable.constructor /* -1085412734 */:
                    return new pageBlockTable();
                case pageBlockHeader.constructor /* -1076861716 */:
                    return new pageBlockHeader();
                case pageBlockPreformatted.constructor /* -1066346178 */:
                    return new pageBlockPreformatted();
                case pageBlockEmbed_layer82.constructor /* -840826671 */:
                    return new pageBlockEmbed_layer82();
                case pageBlockAnchor.constructor /* -837994576 */:
                    return new pageBlockAnchor();
                case pageBlockEmbed_layer60.constructor /* -650782469 */:
                    return new pageBlockEmbed_layer60();
                case pageBlockVideo_layer82.constructor /* -640214938 */:
                    return new pageBlockVideo_layer82();
                case pageBlockDivider.constructor /* -618614392 */:
                    return new pageBlockDivider();
                case pageBlockHeading5.constructor /* -608277398 */:
                    return new pageBlockHeading5();
                case pageBlockList.constructor /* -454524911 */:
                    return new pageBlockList();
                case pageBlockPhoto_layer82.constructor /* -372860542 */:
                    return new pageBlockPhoto_layer82();
                case pageBlockChannel.constructor /* -283684427 */:
                    return new pageBlockChannel();
                case pageBlockSubheader.constructor /* -248793375 */:
                    return new pageBlockSubheader();
                case pageBlockEmbedPost.constructor /* -229005301 */:
                    return new pageBlockEmbedPost();
                case pageBlockSlideshow.constructor /* 52401552 */:
                    return new pageBlockSlideshow();
                case pageBlockCollage_layer82.constructor /* 145955919 */:
                    return new pageBlockCollage_layer82();
                case pageBlockHeading2.constructor /* 158018284 */:
                    return new pageBlockHeading2();
                case pageBlockBlockquoteBlocks.constructor /* 242108356 */:
                    return new pageBlockBlockquoteBlocks();
                case pageBlockSlideshow_layer82.constructor /* 319588707 */:
                    return new pageBlockSlideshow_layer82();
                case pageBlockUnsupported.constructor /* 324435594 */:
                    return new pageBlockUnsupported();
                case pageBlockRelatedArticles.constructor /* 370236054 */:
                    return new pageBlockRelatedArticles();
                case pageBlockPhoto.constructor /* 391759200 */:
                    return new pageBlockPhoto();
                case pageBlockKicker.constructor /* 504660880 */:
                    return new pageBlockKicker();
                case pageBlockOrderedList.constructor /* 534181569 */:
                    return new pageBlockOrderedList();
                case pageBlockBlockquote_layer228.constructor /* 641563686 */:
                    return new pageBlockBlockquote_layer228();
                case pageBlockEmbedPost_layer82.constructor /* 690781161 */:
                    return new pageBlockEmbedPost_layer82();
                case pageBlockAudio_layer82.constructor /* 834148991 */:
                    return new pageBlockAudio_layer82();
                case pageBlockDocument.constructor /* 955923363 */:
                    return new pageBlockDocument();
                case pageBlockCover.constructor /* 972174080 */:
                    return new pageBlockCover();
                case pageBlockList_layer82.constructor /* 978896884 */:
                    return new pageBlockList_layer82();
                case pageBlockThinking.constructor /* 1009361890 */:
                    return new pageBlockThinking();
                case pageBlockAuthorDate_layer60.constructor /* 1029399794 */:
                    return new pageBlockAuthorDate_layer60();
                case pageBlockParagraph.constructor /* 1182402406 */:
                    return new pageBlockParagraph();
                case pageBlockFooter.constructor /* 1216809369 */:
                    return new pageBlockFooter();
                case pageBlockPullquote.constructor /* 1329878739 */:
                    return new pageBlockPullquote();
                case inputPageBlockMap.constructor /* 1464557951 */:
                    return new inputPageBlockMap();
                case pageBlockMath.constructor /* 1493699616 */:
                    return new pageBlockMath();
                case pageBlockCollage.constructor /* 1705048653 */:
                    return new pageBlockCollage();
                case pageBlockBlockquote.constructor /* 1724999435 */:
                    return new pageBlockBlockquote();
                case pageBlockHeading3.constructor /* 1743204781 */:
                    return new pageBlockHeading3();
                case pageBlockHeading6.constructor /* 1747599785 */:
                    return new pageBlockHeading6();
                case pageBlockButtonRow.constructor /* 1835270936 */:
                    return new pageBlockButtonRow();
                case pageBlockTitle.constructor /* 1890305021 */:
                    return new pageBlockTitle();
                case pageBlockDetails.constructor /* 1987480557 */:
                    return new pageBlockDetails();
                case pageBlockVideo.constructor /* 2089805750 */:
                    return new pageBlockVideo();
                default:
                    return null;
            }
        }

        public static PageBlock TLdeserialize(InputSerializedData inputSerializedData, int i, boolean z) {
            return (PageBlock) TLObject.TLdeserialize(PageBlock.class, fromConstructor(i), inputSerializedData, i, z);
        }
    }

    public static class pageBlockUnsupported extends PageBlock {
        public static final int constructor = 324435594;

        @Override // org.telegram.tgnet.TLObject
        public void serializeToStream(OutputSerializedData outputSerializedData) {
            outputSerializedData.writeInt32(constructor);
        }
    }

    public static class pageBlockButtonRow extends PageBlock {
        public static final int constructor = 1835270936;
        public boolean align_center;
        public boolean align_left;
        public boolean align_right;
        public ArrayList<TL_keyboard.PageButton> buttons = new ArrayList<>();
        public int flags;

        @Override // org.telegram.tgnet.TLObject
        public void readParams(InputSerializedData inputSerializedData, boolean z) {
            int int32 = inputSerializedData.readInt32(z);
            this.flags = int32;
            this.align_left = TLObject.hasFlag(int32, 1);
            this.align_center = TLObject.hasFlag(this.flags, 2);
            this.align_right = TLObject.hasFlag(this.flags, 4);
            this.buttons = Vector.deserialize(inputSerializedData, new Vector.TLDeserializer() { // from class: org.telegram.tgnet.tl.TL_iv$pageBlockButtonRow$$ExternalSyntheticLambda0
                @Override // org.telegram.tgnet.Vector.TLDeserializer
                public final TLObject deserialize(InputSerializedData inputSerializedData2, int i, boolean z2) {
                    return TL_keyboard.PageButton.TLdeserialize(inputSerializedData2, i, z2);
                }
            }, z);
        }

        @Override // org.telegram.tgnet.TLObject
        public void serializeToStream(OutputSerializedData outputSerializedData) {
            outputSerializedData.writeInt32(constructor);
            int flag = TLObject.setFlag(this.flags, 1, this.align_left);
            this.flags = flag;
            int flag2 = TLObject.setFlag(flag, 2, this.align_center);
            this.flags = flag2;
            int flag3 = TLObject.setFlag(flag2, 4, this.align_right);
            this.flags = flag3;
            outputSerializedData.writeInt32(flag3);
            Vector.serialize(outputSerializedData, this.buttons);
        }
    }

    public static class pageBlockDocument extends PageBlock {
        public static final int constructor = 955923363;
        public long document_id;

        @Override // org.telegram.tgnet.TLObject
        public void readParams(InputSerializedData inputSerializedData, boolean z) {
            this.document_id = inputSerializedData.readInt64(z);
            this.caption = PageCaption.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
        }

        @Override // org.telegram.tgnet.TLObject
        public void serializeToStream(OutputSerializedData outputSerializedData) {
            outputSerializedData.writeInt32(constructor);
            outputSerializedData.writeInt64(this.document_id);
            this.caption.serializeToStream(outputSerializedData);
        }
    }

    /* JADX INFO: loaded from: classes.dex */
    public static class pageBlockTitle extends PageBlock {
        public static final int constructor = 1890305021;

        @Override // org.telegram.tgnet.TLObject
        public void readParams(InputSerializedData inputSerializedData, boolean z) {
            this.text = RichText.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
        }

        @Override // org.telegram.tgnet.TLObject
        public void serializeToStream(OutputSerializedData outputSerializedData) {
            outputSerializedData.writeInt32(constructor);
            this.text.serializeToStream(outputSerializedData);
        }
    }

    public static class pageBlockSubtitle extends PageBlock {
        public static final int constructor = -1879401953;

        @Override // org.telegram.tgnet.TLObject
        public void readParams(InputSerializedData inputSerializedData, boolean z) {
            this.text = RichText.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
        }

        @Override // org.telegram.tgnet.TLObject
        public void serializeToStream(OutputSerializedData outputSerializedData) {
            outputSerializedData.writeInt32(constructor);
            this.text.serializeToStream(outputSerializedData);
        }
    }

    /* JADX INFO: loaded from: classes.dex */
    public static class pageBlockAuthorDate extends PageBlock {
        public static final int constructor = -1162877472;
        public RichText author;
        public int published_date;

        @Override // org.telegram.tgnet.TLObject
        public void readParams(InputSerializedData inputSerializedData, boolean z) {
            this.author = RichText.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
            this.published_date = inputSerializedData.readInt32(z);
        }

        @Override // org.telegram.tgnet.TLObject
        public void serializeToStream(OutputSerializedData outputSerializedData) {
            outputSerializedData.writeInt32(constructor);
            this.author.serializeToStream(outputSerializedData);
            outputSerializedData.writeInt32(this.published_date);
        }
    }

    public static class pageBlockAuthorDate_layer60 extends pageBlockAuthorDate {
        public static final int constructor = 1029399794;

        @Override // org.telegram.tgnet.tl.TL_iv.pageBlockAuthorDate, org.telegram.tgnet.TLObject
        public void readParams(InputSerializedData inputSerializedData, boolean z) {
            String string = inputSerializedData.readString(z);
            textPlain textplain = new textPlain();
            this.author = textplain;
            textplain.text = string;
            this.published_date = inputSerializedData.readInt32(z);
        }

        @Override // org.telegram.tgnet.tl.TL_iv.pageBlockAuthorDate, org.telegram.tgnet.TLObject
        public void serializeToStream(OutputSerializedData outputSerializedData) {
            outputSerializedData.writeInt32(constructor);
            outputSerializedData.writeString(((textPlain) this.author).text);
            outputSerializedData.writeInt32(this.published_date);
        }
    }

    /* JADX INFO: loaded from: classes.dex */
    public static class pageBlockHeader extends PageBlock {
        public static final int constructor = -1076861716;

        @Override // org.telegram.tgnet.TLObject
        public void readParams(InputSerializedData inputSerializedData, boolean z) {
            this.text = RichText.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
        }

        @Override // org.telegram.tgnet.TLObject
        public void serializeToStream(OutputSerializedData outputSerializedData) {
            outputSerializedData.writeInt32(constructor);
            this.text.serializeToStream(outputSerializedData);
        }
    }

    public static class pageBlockSubheader extends PageBlock {
        public static final int constructor = -248793375;

        @Override // org.telegram.tgnet.TLObject
        public void readParams(InputSerializedData inputSerializedData, boolean z) {
            this.text = RichText.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
        }

        @Override // org.telegram.tgnet.TLObject
        public void serializeToStream(OutputSerializedData outputSerializedData) {
            outputSerializedData.writeInt32(constructor);
            this.text.serializeToStream(outputSerializedData);
        }
    }

    /* JADX INFO: loaded from: classes.dex */
    public static class pageBlockParagraph extends PageBlock {
        public static final int constructor = 1182402406;

        @Override // org.telegram.tgnet.TLObject
        public void readParams(InputSerializedData inputSerializedData, boolean z) {
            this.text = RichText.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
        }

        @Override // org.telegram.tgnet.TLObject
        public void serializeToStream(OutputSerializedData outputSerializedData) {
            outputSerializedData.writeInt32(constructor);
            this.text.serializeToStream(outputSerializedData);
        }
    }

    public static class pageBlockPreformatted extends PageBlock {
        public static final int constructor = -1066346178;
        public String language;

        @Override // org.telegram.tgnet.TLObject
        public void readParams(InputSerializedData inputSerializedData, boolean z) {
            this.text = RichText.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
            this.language = inputSerializedData.readString(z);
        }

        @Override // org.telegram.tgnet.TLObject
        public void serializeToStream(OutputSerializedData outputSerializedData) {
            outputSerializedData.writeInt32(constructor);
            this.text.serializeToStream(outputSerializedData);
            outputSerializedData.writeString(this.language);
        }
    }

    public static class pageBlockFooter extends PageBlock {
        public static final int constructor = 1216809369;

        @Override // org.telegram.tgnet.TLObject
        public void readParams(InputSerializedData inputSerializedData, boolean z) {
            this.text = RichText.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
        }

        @Override // org.telegram.tgnet.TLObject
        public void serializeToStream(OutputSerializedData outputSerializedData) {
            outputSerializedData.writeInt32(constructor);
            this.text.serializeToStream(outputSerializedData);
        }
    }

    /* JADX INFO: loaded from: classes.dex */
    public static class pageBlockDivider extends PageBlock {
        public static final int constructor = -618614392;

        @Override // org.telegram.tgnet.TLObject
        public void serializeToStream(OutputSerializedData outputSerializedData) {
            outputSerializedData.writeInt32(constructor);
        }
    }

    /* JADX INFO: loaded from: classes.dex */
    public static class pageBlockAnchor extends PageBlock {
        public static final int constructor = -837994576;
        public String name;

        @Override // org.telegram.tgnet.TLObject
        public void readParams(InputSerializedData inputSerializedData, boolean z) {
            this.name = inputSerializedData.readString(z);
        }

        @Override // org.telegram.tgnet.TLObject
        public void serializeToStream(OutputSerializedData outputSerializedData) {
            outputSerializedData.writeInt32(constructor);
            outputSerializedData.writeString(this.name);
        }
    }

    /* JADX INFO: loaded from: classes.dex */
    public static class pageBlockList extends PageBlock {
        public static final int constructor = -454524911;
        public ArrayList<PageListItem> items = new ArrayList<>();
        public boolean ordered;

        @Override // org.telegram.tgnet.TLObject
        public void readParams(InputSerializedData inputSerializedData, boolean z) {
            this.items = Vector.deserialize(inputSerializedData, new Vector.TLDeserializer() { // from class: org.telegram.tgnet.tl.TL_iv$pageBlockList$$ExternalSyntheticLambda0
                @Override // org.telegram.tgnet.Vector.TLDeserializer
                public final TLObject deserialize(InputSerializedData inputSerializedData2, int i, boolean z2) {
                    return TL_iv.PageListItem.TLdeserialize(inputSerializedData2, i, z2);
                }
            }, z);
        }

        @Override // org.telegram.tgnet.TLObject
        public void serializeToStream(OutputSerializedData outputSerializedData) {
            outputSerializedData.writeInt32(constructor);
            Vector.serialize(outputSerializedData, this.items);
        }
    }

    public static class pageBlockList_layer82 extends pageBlockList {
        public static final int constructor = 978896884;

        @Override // org.telegram.tgnet.tl.TL_iv.pageBlockList, org.telegram.tgnet.TLObject
        public void readParams(InputSerializedData inputSerializedData, boolean z) {
            this.ordered = inputSerializedData.readBool(z);
            ArrayList arrayListDeserialize = Vector.deserialize(inputSerializedData, new RichQuote$$ExternalSyntheticLambda0(), z);
            int size = arrayListDeserialize.size();
            int i = 0;
            while (i < size) {
                Object obj = arrayListDeserialize.get(i);
                i++;
                TL_pageListItemText tL_pageListItemText = new TL_pageListItemText();
                tL_pageListItemText.text = (RichText) obj;
                this.items.add(tL_pageListItemText);
            }
        }

        @Override // org.telegram.tgnet.tl.TL_iv.pageBlockList, org.telegram.tgnet.TLObject
        public void serializeToStream(OutputSerializedData outputSerializedData) {
            outputSerializedData.writeInt32(constructor);
            outputSerializedData.writeBool(this.ordered);
            ArrayList arrayList = new ArrayList(this.items.size());
            ArrayList<PageListItem> arrayList2 = this.items;
            int size = arrayList2.size();
            int i = 0;
            while (i < size) {
                PageListItem pageListItem = arrayList2.get(i);
                i++;
                PageListItem pageListItem2 = pageListItem;
                if (pageListItem2 instanceof TL_pageListItemText) {
                    arrayList.add(((TL_pageListItemText) pageListItem2).text);
                }
            }
            Vector.serialize(outputSerializedData, arrayList);
        }
    }

    /* JADX INFO: loaded from: classes.dex */
    public static class pageBlockBlockquote extends PageBlock {
        public static final int constructor = 1724999435;
        public RichText caption;
        public boolean collapsed;
        public int flags;

        @Override // org.telegram.tgnet.TLObject
        public void readParams(InputSerializedData inputSerializedData, boolean z) {
            int int32 = inputSerializedData.readInt32(z);
            this.flags = int32;
            this.collapsed = TLObject.hasFlag(int32, 1);
            this.text = RichText.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
            this.caption = RichText.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
        }

        @Override // org.telegram.tgnet.TLObject
        public void serializeToStream(OutputSerializedData outputSerializedData) {
            outputSerializedData.writeInt32(constructor);
            int flag = TLObject.setFlag(this.flags, 1, this.collapsed);
            this.flags = flag;
            outputSerializedData.writeInt32(flag);
            this.text.serializeToStream(outputSerializedData);
            this.caption.serializeToStream(outputSerializedData);
        }
    }

    public static class pageBlockBlockquote_layer228 extends pageBlockBlockquote {
        public static final int constructor = 641563686;

        @Override // org.telegram.tgnet.tl.TL_iv.pageBlockBlockquote, org.telegram.tgnet.TLObject
        public void readParams(InputSerializedData inputSerializedData, boolean z) {
            this.text = RichText.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
            ((pageBlockBlockquote) this).caption = RichText.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
        }

        @Override // org.telegram.tgnet.tl.TL_iv.pageBlockBlockquote, org.telegram.tgnet.TLObject
        public void serializeToStream(OutputSerializedData outputSerializedData) {
            outputSerializedData.writeInt32(constructor);
            this.text.serializeToStream(outputSerializedData);
            ((pageBlockBlockquote) this).caption.serializeToStream(outputSerializedData);
        }
    }

    public static class pageBlockBlockquoteBlocks extends PageBlock {
        public static final int constructor = 242108356;
        public ArrayList<PageBlock> blocks = new ArrayList<>();
        public RichText caption;

        @Override // org.telegram.tgnet.TLObject
        public void readParams(InputSerializedData inputSerializedData, boolean z) {
            this.blocks = Vector.deserialize(inputSerializedData, new TL_iv$RichMessage$$ExternalSyntheticLambda0(), z);
            this.caption = RichText.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
        }

        @Override // org.telegram.tgnet.TLObject
        public void serializeToStream(OutputSerializedData outputSerializedData) {
            outputSerializedData.writeInt32(constructor);
            Vector.serialize(outputSerializedData, this.blocks);
            this.caption.serializeToStream(outputSerializedData);
        }
    }

    public static class pageBlockPullquote extends PageBlock {
        public static final int constructor = 1329878739;
        public RichText caption;

        @Override // org.telegram.tgnet.TLObject
        public void readParams(InputSerializedData inputSerializedData, boolean z) {
            this.text = RichText.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
            this.caption = RichText.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
        }

        @Override // org.telegram.tgnet.TLObject
        public void serializeToStream(OutputSerializedData outputSerializedData) {
            outputSerializedData.writeInt32(constructor);
            this.text.serializeToStream(outputSerializedData);
            this.caption.serializeToStream(outputSerializedData);
        }
    }

    /* JADX INFO: loaded from: classes.dex */
    public static class pageBlockPhoto extends PageBlock {
        public static final int constructor = 391759200;
        public int flags;
        public long photo_id;
        public boolean spoiler;
        public String url;
        public long webpage_id;

        @Override // org.telegram.tgnet.TLObject
        public void readParams(InputSerializedData inputSerializedData, boolean z) {
            int int32 = inputSerializedData.readInt32(z);
            this.flags = int32;
            this.spoiler = TLObject.hasFlag(int32, 2);
            this.photo_id = inputSerializedData.readInt64(z);
            this.caption = PageCaption.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
            if (TLObject.hasFlag(this.flags, 1)) {
                this.url = inputSerializedData.readString(z);
            }
            if (TLObject.hasFlag(this.flags, 1)) {
                this.webpage_id = inputSerializedData.readInt64(z);
            }
        }

        @Override // org.telegram.tgnet.TLObject
        public void serializeToStream(OutputSerializedData outputSerializedData) {
            outputSerializedData.writeInt32(constructor);
            int flag = TLObject.setFlag(this.flags, 2, this.spoiler);
            this.flags = flag;
            outputSerializedData.writeInt32(flag);
            outputSerializedData.writeInt64(this.photo_id);
            this.caption.serializeToStream(outputSerializedData);
            if (TLObject.hasFlag(this.flags, 1)) {
                outputSerializedData.writeString(this.url);
            }
            if (TLObject.hasFlag(this.flags, 1)) {
                outputSerializedData.writeInt64(this.webpage_id);
            }
        }
    }

    public static class pageBlockPhoto_layer82 extends pageBlockPhoto {
        public static final int constructor = -372860542;

        @Override // org.telegram.tgnet.tl.TL_iv.pageBlockPhoto, org.telegram.tgnet.TLObject
        public void readParams(InputSerializedData inputSerializedData, boolean z) {
            this.photo_id = inputSerializedData.readInt64(z);
            PageCaption pageCaption = new PageCaption();
            this.caption = pageCaption;
            pageCaption.text = RichText.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
            this.caption.credit = new textEmpty();
        }

        @Override // org.telegram.tgnet.tl.TL_iv.pageBlockPhoto, org.telegram.tgnet.TLObject
        public void serializeToStream(OutputSerializedData outputSerializedData) {
            outputSerializedData.writeInt32(constructor);
            outputSerializedData.writeInt64(this.photo_id);
            this.caption.text.serializeToStream(outputSerializedData);
        }
    }

    /* JADX INFO: loaded from: classes.dex */
    public static class pageBlockVideo extends PageBlock {
        public static final int constructor = 2089805750;
        public boolean autoplay;
        public int flags;
        public boolean loop;
        public boolean spoiler;
        public long video_id;

        @Override // org.telegram.tgnet.TLObject
        public void readParams(InputSerializedData inputSerializedData, boolean z) {
            int int32 = inputSerializedData.readInt32(z);
            this.flags = int32;
            this.autoplay = TLObject.hasFlag(int32, 1);
            this.loop = TLObject.hasFlag(this.flags, 2);
            this.spoiler = TLObject.hasFlag(this.flags, 4);
            this.video_id = inputSerializedData.readInt64(z);
            this.caption = PageCaption.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
        }

        @Override // org.telegram.tgnet.TLObject
        public void serializeToStream(OutputSerializedData outputSerializedData) {
            outputSerializedData.writeInt32(constructor);
            int flag = TLObject.setFlag(this.flags, 1, this.autoplay);
            this.flags = flag;
            int flag2 = TLObject.setFlag(flag, 2, this.loop);
            this.flags = flag2;
            int flag3 = TLObject.setFlag(flag2, 4, this.spoiler);
            this.flags = flag3;
            outputSerializedData.writeInt32(flag3);
            outputSerializedData.writeInt64(this.video_id);
            this.caption.serializeToStream(outputSerializedData);
        }
    }

    public static class pageBlockVideo_layer82 extends pageBlockVideo {
        public static final int constructor = -640214938;

        @Override // org.telegram.tgnet.tl.TL_iv.pageBlockVideo, org.telegram.tgnet.TLObject
        public void readParams(InputSerializedData inputSerializedData, boolean z) {
            int int32 = inputSerializedData.readInt32(z);
            this.flags = int32;
            this.autoplay = TLObject.hasFlag(int32, 1);
            this.loop = TLObject.hasFlag(this.flags, 2);
            this.video_id = inputSerializedData.readInt64(z);
            PageCaption pageCaption = new PageCaption();
            this.caption = pageCaption;
            pageCaption.text = RichText.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
            this.caption.credit = new textEmpty();
        }

        @Override // org.telegram.tgnet.tl.TL_iv.pageBlockVideo, org.telegram.tgnet.TLObject
        public void serializeToStream(OutputSerializedData outputSerializedData) {
            outputSerializedData.writeInt32(constructor);
            int flag = TLObject.setFlag(this.flags, 1, this.autoplay);
            this.flags = flag;
            int flag2 = TLObject.setFlag(flag, 2, this.loop);
            this.flags = flag2;
            outputSerializedData.writeInt32(flag2);
            outputSerializedData.writeInt64(this.video_id);
            this.caption.text.serializeToStream(outputSerializedData);
        }
    }

    /* JADX INFO: loaded from: classes.dex */
    public static class pageBlockCover extends PageBlock {
        public static final int constructor = 972174080;
        public PageBlock cover;

        @Override // org.telegram.tgnet.TLObject
        public void readParams(InputSerializedData inputSerializedData, boolean z) {
            this.cover = PageBlock.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
        }

        @Override // org.telegram.tgnet.TLObject
        public void serializeToStream(OutputSerializedData outputSerializedData) {
            outputSerializedData.writeInt32(constructor);
            this.cover.serializeToStream(outputSerializedData);
        }
    }

    public static class pageBlockEmbed extends PageBlock {
        public static final int constructor = -1468953147;
        public boolean allow_scrolling;
        public int flags;
        public boolean full_width;

        /* JADX INFO: renamed from: h */
        public int f1048h;
        public String html;
        public long poster_photo_id;
        public String url;

        /* JADX INFO: renamed from: w */
        public int f1049w;

        @Override // org.telegram.tgnet.TLObject
        public void readParams(InputSerializedData inputSerializedData, boolean z) {
            int int32 = inputSerializedData.readInt32(z);
            this.flags = int32;
            this.full_width = TLObject.hasFlag(int32, 1);
            this.allow_scrolling = TLObject.hasFlag(this.flags, 8);
            if (TLObject.hasFlag(this.flags, 2)) {
                this.url = inputSerializedData.readString(z);
            }
            if (TLObject.hasFlag(this.flags, 4)) {
                this.html = inputSerializedData.readString(z);
            }
            if (TLObject.hasFlag(this.flags, 16)) {
                this.poster_photo_id = inputSerializedData.readInt64(z);
            }
            if (TLObject.hasFlag(this.flags, 32)) {
                this.f1049w = inputSerializedData.readInt32(z);
            }
            if (TLObject.hasFlag(this.flags, 32)) {
                this.f1048h = inputSerializedData.readInt32(z);
            }
            this.caption = PageCaption.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
        }

        @Override // org.telegram.tgnet.TLObject
        public void serializeToStream(OutputSerializedData outputSerializedData) {
            outputSerializedData.writeInt32(constructor);
            int flag = TLObject.setFlag(this.flags, 1, this.full_width);
            this.flags = flag;
            int flag2 = TLObject.setFlag(flag, 8, this.allow_scrolling);
            this.flags = flag2;
            outputSerializedData.writeInt32(flag2);
            if (TLObject.hasFlag(this.flags, 2)) {
                outputSerializedData.writeString(this.url);
            }
            if (TLObject.hasFlag(this.flags, 4)) {
                outputSerializedData.writeString(this.html);
            }
            if (TLObject.hasFlag(this.flags, 16)) {
                outputSerializedData.writeInt64(this.poster_photo_id);
            }
            if (TLObject.hasFlag(this.flags, 32)) {
                outputSerializedData.writeInt32(this.f1049w);
            }
            if (TLObject.hasFlag(this.flags, 32)) {
                outputSerializedData.writeInt32(this.f1048h);
            }
            this.caption.serializeToStream(outputSerializedData);
        }
    }

    public static class pageBlockEmbed_layer82 extends pageBlockEmbed {
        public static final int constructor = -840826671;

        @Override // org.telegram.tgnet.tl.TL_iv.pageBlockEmbed, org.telegram.tgnet.TLObject
        public void readParams(InputSerializedData inputSerializedData, boolean z) {
            int int32 = inputSerializedData.readInt32(z);
            this.flags = int32;
            this.full_width = TLObject.hasFlag(int32, 1);
            this.allow_scrolling = TLObject.hasFlag(this.flags, 8);
            if (TLObject.hasFlag(this.flags, 2)) {
                this.url = inputSerializedData.readString(z);
            }
            if (TLObject.hasFlag(this.flags, 4)) {
                this.html = inputSerializedData.readString(z);
            }
            if (TLObject.hasFlag(this.flags, 16)) {
                this.poster_photo_id = inputSerializedData.readInt64(z);
            }
            this.f1049w = inputSerializedData.readInt32(z);
            this.f1048h = inputSerializedData.readInt32(z);
            PageCaption pageCaption = new PageCaption();
            this.caption = pageCaption;
            pageCaption.text = RichText.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
            this.caption.credit = new textEmpty();
        }

        @Override // org.telegram.tgnet.tl.TL_iv.pageBlockEmbed, org.telegram.tgnet.TLObject
        public void serializeToStream(OutputSerializedData outputSerializedData) {
            outputSerializedData.writeInt32(constructor);
            int flag = TLObject.setFlag(this.flags, 1, this.full_width);
            this.flags = flag;
            int flag2 = TLObject.setFlag(flag, 8, this.allow_scrolling);
            this.flags = flag2;
            outputSerializedData.writeInt32(flag2);
            if (TLObject.hasFlag(this.flags, 2)) {
                outputSerializedData.writeString(this.url);
            }
            if (TLObject.hasFlag(this.flags, 4)) {
                outputSerializedData.writeString(this.html);
            }
            if (TLObject.hasFlag(this.flags, 16)) {
                outputSerializedData.writeInt64(this.poster_photo_id);
            }
            outputSerializedData.writeInt32(this.f1049w);
            outputSerializedData.writeInt32(this.f1048h);
            this.caption.text.serializeToStream(outputSerializedData);
        }
    }

    public static class pageBlockEmbed_layer60 extends pageBlockEmbed {
        public static final int constructor = -650782469;

        @Override // org.telegram.tgnet.tl.TL_iv.pageBlockEmbed, org.telegram.tgnet.TLObject
        public void readParams(InputSerializedData inputSerializedData, boolean z) {
            int int32 = inputSerializedData.readInt32(z);
            this.flags = int32;
            this.full_width = TLObject.hasFlag(int32, 1);
            this.allow_scrolling = TLObject.hasFlag(this.flags, 8);
            if (TLObject.hasFlag(this.flags, 2)) {
                this.url = inputSerializedData.readString(z);
            }
            if (TLObject.hasFlag(this.flags, 4)) {
                this.html = inputSerializedData.readString(z);
            }
            this.f1049w = inputSerializedData.readInt32(z);
            this.f1048h = inputSerializedData.readInt32(z);
            PageCaption pageCaption = new PageCaption();
            this.caption = pageCaption;
            pageCaption.text = RichText.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
            this.caption.credit = new textEmpty();
        }

        @Override // org.telegram.tgnet.tl.TL_iv.pageBlockEmbed, org.telegram.tgnet.TLObject
        public void serializeToStream(OutputSerializedData outputSerializedData) {
            outputSerializedData.writeInt32(constructor);
            int flag = TLObject.setFlag(this.flags, 1, this.full_width);
            this.flags = flag;
            int flag2 = TLObject.setFlag(flag, 8, this.allow_scrolling);
            this.flags = flag2;
            outputSerializedData.writeInt32(flag2);
            if (TLObject.hasFlag(this.flags, 2)) {
                outputSerializedData.writeString(this.url);
            }
            if (TLObject.hasFlag(this.flags, 4)) {
                outputSerializedData.writeString(this.html);
            }
            outputSerializedData.writeInt32(this.f1049w);
            outputSerializedData.writeInt32(this.f1048h);
            this.caption.text.serializeToStream(outputSerializedData);
        }
    }

    public static class pageBlockEmbedPost extends PageBlock {
        public static final int constructor = -229005301;
        public String author;
        public long author_photo_id;
        public ArrayList<PageBlock> blocks = new ArrayList<>();
        public int date;
        public String url;
        public long webpage_id;

        @Override // org.telegram.tgnet.TLObject
        public void readParams(InputSerializedData inputSerializedData, boolean z) {
            this.url = inputSerializedData.readString(z);
            this.webpage_id = inputSerializedData.readInt64(z);
            this.author_photo_id = inputSerializedData.readInt64(z);
            this.author = inputSerializedData.readString(z);
            this.date = inputSerializedData.readInt32(z);
            this.blocks = Vector.deserialize(inputSerializedData, new TL_iv$RichMessage$$ExternalSyntheticLambda0(), z);
            this.caption = PageCaption.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
        }

        @Override // org.telegram.tgnet.TLObject
        public void serializeToStream(OutputSerializedData outputSerializedData) {
            outputSerializedData.writeInt32(constructor);
            outputSerializedData.writeString(this.url);
            outputSerializedData.writeInt64(this.webpage_id);
            outputSerializedData.writeInt64(this.author_photo_id);
            outputSerializedData.writeString(this.author);
            outputSerializedData.writeInt32(this.date);
            Vector.serialize(outputSerializedData, this.blocks);
            this.caption.serializeToStream(outputSerializedData);
        }
    }

    public static class pageBlockEmbedPost_layer82 extends pageBlockEmbedPost {
        public static final int constructor = 690781161;

        @Override // org.telegram.tgnet.tl.TL_iv.pageBlockEmbedPost, org.telegram.tgnet.TLObject
        public void readParams(InputSerializedData inputSerializedData, boolean z) {
            this.url = inputSerializedData.readString(z);
            this.webpage_id = inputSerializedData.readInt64(z);
            this.author_photo_id = inputSerializedData.readInt64(z);
            this.author = inputSerializedData.readString(z);
            this.date = inputSerializedData.readInt32(z);
            this.blocks = Vector.deserialize(inputSerializedData, new TL_iv$RichMessage$$ExternalSyntheticLambda0(), z);
            PageCaption pageCaption = new PageCaption();
            this.caption = pageCaption;
            pageCaption.text = RichText.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
            this.caption.credit = new textEmpty();
        }

        @Override // org.telegram.tgnet.tl.TL_iv.pageBlockEmbedPost, org.telegram.tgnet.TLObject
        public void serializeToStream(OutputSerializedData outputSerializedData) {
            outputSerializedData.writeInt32(constructor);
            outputSerializedData.writeString(this.url);
            outputSerializedData.writeInt64(this.webpage_id);
            outputSerializedData.writeInt64(this.author_photo_id);
            outputSerializedData.writeString(this.author);
            outputSerializedData.writeInt32(this.date);
            Vector.serialize(outputSerializedData, this.blocks);
            this.caption.text.serializeToStream(outputSerializedData);
        }
    }

    public static class pageBlockCollage extends PageBlock {
        public static final int constructor = 1705048653;
        public ArrayList<PageBlock> items = new ArrayList<>();

        @Override // org.telegram.tgnet.TLObject
        public void readParams(InputSerializedData inputSerializedData, boolean z) {
            this.items = Vector.deserialize(inputSerializedData, new TL_iv$RichMessage$$ExternalSyntheticLambda0(), z);
            this.caption = PageCaption.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
        }

        @Override // org.telegram.tgnet.TLObject
        public void serializeToStream(OutputSerializedData outputSerializedData) {
            outputSerializedData.writeInt32(constructor);
            Vector.serialize(outputSerializedData, this.items);
            this.caption.serializeToStream(outputSerializedData);
        }
    }

    public static class pageBlockCollage_layer82 extends pageBlockCollage {
        public static final int constructor = 145955919;

        @Override // org.telegram.tgnet.tl.TL_iv.pageBlockCollage, org.telegram.tgnet.TLObject
        public void readParams(InputSerializedData inputSerializedData, boolean z) {
            this.items = Vector.deserialize(inputSerializedData, new TL_iv$RichMessage$$ExternalSyntheticLambda0(), z);
            PageCaption pageCaption = new PageCaption();
            this.caption = pageCaption;
            pageCaption.text = RichText.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
            this.caption.credit = new textEmpty();
        }

        @Override // org.telegram.tgnet.tl.TL_iv.pageBlockCollage, org.telegram.tgnet.TLObject
        public void serializeToStream(OutputSerializedData outputSerializedData) {
            outputSerializedData.writeInt32(constructor);
            Vector.serialize(outputSerializedData, this.items);
            this.caption.text.serializeToStream(outputSerializedData);
        }
    }

    public static class pageBlockSlideshow extends PageBlock {
        public static final int constructor = 52401552;
        public ArrayList<PageBlock> items = new ArrayList<>();

        @Override // org.telegram.tgnet.TLObject
        public void readParams(InputSerializedData inputSerializedData, boolean z) {
            this.items = Vector.deserialize(inputSerializedData, new TL_iv$RichMessage$$ExternalSyntheticLambda0(), z);
            this.caption = PageCaption.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
        }

        @Override // org.telegram.tgnet.TLObject
        public void serializeToStream(OutputSerializedData outputSerializedData) {
            outputSerializedData.writeInt32(constructor);
            Vector.serialize(outputSerializedData, this.items);
            this.caption.serializeToStream(outputSerializedData);
        }
    }

    public static class pageBlockSlideshow_layer82 extends pageBlockSlideshow {
        public static final int constructor = 319588707;

        @Override // org.telegram.tgnet.tl.TL_iv.pageBlockSlideshow, org.telegram.tgnet.TLObject
        public void readParams(InputSerializedData inputSerializedData, boolean z) {
            this.items = Vector.deserialize(inputSerializedData, new TL_iv$RichMessage$$ExternalSyntheticLambda0(), z);
            PageCaption pageCaption = new PageCaption();
            this.caption = pageCaption;
            pageCaption.text = RichText.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
            this.caption.credit = new textEmpty();
        }

        @Override // org.telegram.tgnet.tl.TL_iv.pageBlockSlideshow, org.telegram.tgnet.TLObject
        public void serializeToStream(OutputSerializedData outputSerializedData) {
            outputSerializedData.writeInt32(constructor);
            Vector.serialize(outputSerializedData, this.items);
            this.caption.text.serializeToStream(outputSerializedData);
        }
    }

    /* JADX INFO: loaded from: classes.dex */
    public static class pageBlockChannel extends PageBlock {
        public static final int constructor = -283684427;
        public TLRPC.Chat channel;

        @Override // org.telegram.tgnet.TLObject
        public void readParams(InputSerializedData inputSerializedData, boolean z) {
            this.channel = TLRPC.Chat.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
        }

        @Override // org.telegram.tgnet.TLObject
        public void serializeToStream(OutputSerializedData outputSerializedData) {
            outputSerializedData.writeInt32(constructor);
            this.channel.serializeToStream(outputSerializedData);
        }
    }

    public static class pageBlockAudio extends PageBlock {
        public static final int constructor = -2143067670;
        public long audio_id;

        @Override // org.telegram.tgnet.TLObject
        public void readParams(InputSerializedData inputSerializedData, boolean z) {
            this.audio_id = inputSerializedData.readInt64(z);
            this.caption = PageCaption.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
        }

        @Override // org.telegram.tgnet.TLObject
        public void serializeToStream(OutputSerializedData outputSerializedData) {
            outputSerializedData.writeInt32(constructor);
            outputSerializedData.writeInt64(this.audio_id);
            this.caption.serializeToStream(outputSerializedData);
        }
    }

    public static class pageBlockAudio_layer82 extends pageBlockAudio {
        public static final int constructor = 834148991;

        @Override // org.telegram.tgnet.tl.TL_iv.pageBlockAudio, org.telegram.tgnet.TLObject
        public void readParams(InputSerializedData inputSerializedData, boolean z) {
            this.audio_id = inputSerializedData.readInt64(z);
            PageCaption pageCaption = new PageCaption();
            this.caption = pageCaption;
            pageCaption.text = RichText.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
            this.caption.credit = new textEmpty();
        }

        @Override // org.telegram.tgnet.tl.TL_iv.pageBlockAudio, org.telegram.tgnet.TLObject
        public void serializeToStream(OutputSerializedData outputSerializedData) {
            outputSerializedData.writeInt32(constructor);
            outputSerializedData.writeInt64(this.audio_id);
            this.caption.text.serializeToStream(outputSerializedData);
        }
    }

    public static class pageBlockKicker extends PageBlock {
        public static final int constructor = 504660880;

        @Override // org.telegram.tgnet.TLObject
        public void readParams(InputSerializedData inputSerializedData, boolean z) {
            this.text = RichText.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
        }

        @Override // org.telegram.tgnet.TLObject
        public void serializeToStream(OutputSerializedData outputSerializedData) {
            outputSerializedData.writeInt32(constructor);
            this.text.serializeToStream(outputSerializedData);
        }
    }

    public static class pageBlockTable extends PageBlock {
        public static final int constructor = -1085412734;
        public boolean bordered;
        public boolean compact;
        public int flags;
        public ArrayList<pageTableRow> rows = new ArrayList<>();
        public boolean striped;
        public RichText title;

        @Override // org.telegram.tgnet.TLObject
        public void readParams(InputSerializedData inputSerializedData, boolean z) {
            int int32 = inputSerializedData.readInt32(z);
            this.flags = int32;
            this.bordered = TLObject.hasFlag(int32, 1);
            this.striped = TLObject.hasFlag(this.flags, 2);
            this.compact = TLObject.hasFlag(this.flags, 4);
            this.title = RichText.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
            this.rows = Vector.deserialize(inputSerializedData, new Vector.TLDeserializer() { // from class: org.telegram.tgnet.tl.TL_iv$pageBlockTable$$ExternalSyntheticLambda0
                @Override // org.telegram.tgnet.Vector.TLDeserializer
                public final TLObject deserialize(InputSerializedData inputSerializedData2, int i, boolean z2) {
                    return TL_iv.pageTableRow.TLdeserialize(inputSerializedData2, i, z2);
                }
            }, z);
        }

        @Override // org.telegram.tgnet.TLObject
        public void serializeToStream(OutputSerializedData outputSerializedData) {
            outputSerializedData.writeInt32(constructor);
            int flag = TLObject.setFlag(this.flags, 1, this.bordered);
            this.flags = flag;
            int flag2 = TLObject.setFlag(flag, 2, this.striped);
            this.flags = flag2;
            int flag3 = TLObject.setFlag(flag2, 4, this.compact);
            this.flags = flag3;
            outputSerializedData.writeInt32(flag3);
            this.title.serializeToStream(outputSerializedData);
            Vector.serialize(outputSerializedData, this.rows);
        }
    }

    public static class pageTableRow extends TLObject {
        public static final int constructor = -524237339;
        public ArrayList<pageTableCell> cells = new ArrayList<>();

        public static pageTableRow TLdeserialize(InputSerializedData inputSerializedData, int i, boolean z) {
            return (pageTableRow) TLObject.TLdeserialize(pageTableRow.class, -524237339 != i ? null : new pageTableRow(), inputSerializedData, i, z);
        }

        @Override // org.telegram.tgnet.TLObject
        public void readParams(InputSerializedData inputSerializedData, boolean z) {
            this.cells = Vector.deserialize(inputSerializedData, new Vector.TLDeserializer() { // from class: org.telegram.tgnet.tl.TL_iv$pageTableRow$$ExternalSyntheticLambda0
                @Override // org.telegram.tgnet.Vector.TLDeserializer
                public final TLObject deserialize(InputSerializedData inputSerializedData2, int i, boolean z2) {
                    return TL_iv.pageTableCell.TLdeserialize(inputSerializedData2, i, z2);
                }
            }, z);
        }

        @Override // org.telegram.tgnet.TLObject
        public void serializeToStream(OutputSerializedData outputSerializedData) {
            outputSerializedData.writeInt32(constructor);
            Vector.serialize(outputSerializedData, this.cells);
        }
    }

    public static class pageTableCell extends TLObject {
        public static final int constructor = 878078826;
        public boolean align_center;
        public boolean align_right;
        public int colspan;
        public int flags;
        public boolean header;
        public int rowspan;
        public RichText text;
        public boolean valign_bottom;
        public boolean valign_middle;

        public static pageTableCell TLdeserialize(InputSerializedData inputSerializedData, int i, boolean z) {
            return (pageTableCell) TLObject.TLdeserialize(pageTableCell.class, 878078826 != i ? null : new pageTableCell(), inputSerializedData, i, z);
        }

        @Override // org.telegram.tgnet.TLObject
        public void readParams(InputSerializedData inputSerializedData, boolean z) {
            int int32 = inputSerializedData.readInt32(z);
            this.flags = int32;
            this.header = TLObject.hasFlag(int32, 1);
            this.align_center = TLObject.hasFlag(this.flags, 8);
            this.align_right = TLObject.hasFlag(this.flags, 16);
            this.valign_middle = TLObject.hasFlag(this.flags, 32);
            this.valign_bottom = TLObject.hasFlag(this.flags, 64);
            if (TLObject.hasFlag(this.flags, 128)) {
                this.text = RichText.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
            }
            if (TLObject.hasFlag(this.flags, 2)) {
                this.colspan = inputSerializedData.readInt32(z);
            }
            if (TLObject.hasFlag(this.flags, 4)) {
                this.rowspan = inputSerializedData.readInt32(z);
            }
        }

        @Override // org.telegram.tgnet.TLObject
        public void serializeToStream(OutputSerializedData outputSerializedData) {
            outputSerializedData.writeInt32(constructor);
            int flag = TLObject.setFlag(this.flags, 1, this.header);
            this.flags = flag;
            int flag2 = TLObject.setFlag(flag, 8, this.align_center);
            this.flags = flag2;
            int flag3 = TLObject.setFlag(flag2, 16, this.align_right);
            this.flags = flag3;
            int flag4 = TLObject.setFlag(flag3, 32, this.valign_middle);
            this.flags = flag4;
            int flag5 = TLObject.setFlag(flag4, 64, this.valign_bottom);
            this.flags = flag5;
            outputSerializedData.writeInt32(flag5);
            if (TLObject.hasFlag(this.flags, 128)) {
                this.text.serializeToStream(outputSerializedData);
            }
            if (TLObject.hasFlag(this.flags, 2)) {
                outputSerializedData.writeInt32(this.colspan);
            }
            if (TLObject.hasFlag(this.flags, 4)) {
                outputSerializedData.writeInt32(this.rowspan);
            }
        }
    }

    public static class pageBlockOrderedList extends PageBlock {
        public static final int constructor = 534181569;
        public int flags;
        public ArrayList<PageListOrderedItem> items = new ArrayList<>();
        public boolean reversed;
        public int start;
        public String type;

        @Override // org.telegram.tgnet.TLObject
        public void readParams(InputSerializedData inputSerializedData, boolean z) {
            int int32 = inputSerializedData.readInt32(z);
            this.flags = int32;
            this.reversed = TLObject.hasFlag(int32, 4);
            this.items = Vector.deserialize(inputSerializedData, new TL_iv$pageBlockOrderedList$$ExternalSyntheticLambda0(), z);
            if (TLObject.hasFlag(this.flags, 1)) {
                this.start = inputSerializedData.readInt32(z);
            }
            if (TLObject.hasFlag(this.flags, 2)) {
                this.type = inputSerializedData.readString(z);
            }
        }

        @Override // org.telegram.tgnet.TLObject
        public void serializeToStream(OutputSerializedData outputSerializedData) {
            outputSerializedData.writeInt32(constructor);
            int flag = TLObject.setFlag(this.flags, 4, this.reversed);
            this.flags = flag;
            outputSerializedData.writeInt32(flag);
            Vector.serialize(outputSerializedData, this.items);
            if (TLObject.hasFlag(this.flags, 1)) {
                outputSerializedData.writeInt32(this.start);
            }
            if (TLObject.hasFlag(this.flags, 2)) {
                outputSerializedData.writeString(this.type);
            }
        }
    }

    public static class pageBlockOrderedList_layer226 extends pageBlockOrderedList {
        public static final int constructor = -1702174239;

        @Override // org.telegram.tgnet.tl.TL_iv.pageBlockOrderedList, org.telegram.tgnet.TLObject
        public void readParams(InputSerializedData inputSerializedData, boolean z) {
            this.items = Vector.deserialize(inputSerializedData, new TL_iv$pageBlockOrderedList$$ExternalSyntheticLambda0(), z);
        }

        @Override // org.telegram.tgnet.tl.TL_iv.pageBlockOrderedList, org.telegram.tgnet.TLObject
        public void serializeToStream(OutputSerializedData outputSerializedData) {
            outputSerializedData.writeInt32(constructor);
            Vector.serialize(outputSerializedData, this.items);
        }
    }

    public static class pageBlockDetails extends PageBlock {
        public static final int constructor = 1987480557;
        public ArrayList<PageBlock> blocks = new ArrayList<>();
        public int flags;
        public boolean open;
        public RichText title;

        @Override // org.telegram.tgnet.TLObject
        public void readParams(InputSerializedData inputSerializedData, boolean z) {
            int int32 = inputSerializedData.readInt32(z);
            this.flags = int32;
            this.open = TLObject.hasFlag(int32, 1);
            this.blocks = Vector.deserialize(inputSerializedData, new TL_iv$RichMessage$$ExternalSyntheticLambda0(), z);
            this.title = RichText.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
        }

        @Override // org.telegram.tgnet.TLObject
        public void serializeToStream(OutputSerializedData outputSerializedData) {
            outputSerializedData.writeInt32(constructor);
            int flag = TLObject.setFlag(this.flags, 1, this.open);
            this.flags = flag;
            outputSerializedData.writeInt32(flag);
            Vector.serialize(outputSerializedData, this.blocks);
            this.title.serializeToStream(outputSerializedData);
        }
    }

    /* JADX INFO: loaded from: classes.dex */
    public static class pageBlockRelatedArticles extends PageBlock {
        public static final int constructor = 370236054;
        public ArrayList<pageRelatedArticle> articles = new ArrayList<>();
        public RichText title;

        @Override // org.telegram.tgnet.TLObject
        public void readParams(InputSerializedData inputSerializedData, boolean z) {
            this.title = RichText.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
            this.articles = Vector.deserialize(inputSerializedData, new Vector.TLDeserializer() { // from class: org.telegram.tgnet.tl.TL_iv$pageBlockRelatedArticles$$ExternalSyntheticLambda0
                @Override // org.telegram.tgnet.Vector.TLDeserializer
                public final TLObject deserialize(InputSerializedData inputSerializedData2, int i, boolean z2) {
                    return TL_iv.pageRelatedArticle.TLdeserialize(inputSerializedData2, i, z2);
                }
            }, z);
        }

        @Override // org.telegram.tgnet.TLObject
        public void serializeToStream(OutputSerializedData outputSerializedData) {
            outputSerializedData.writeInt32(constructor);
            this.title.serializeToStream(outputSerializedData);
            Vector.serialize(outputSerializedData, this.articles);
        }
    }

    /* JADX INFO: loaded from: classes.dex */
    public static class pageRelatedArticle extends TLObject {
        public static final int constructor = -1282352120;
        public String author;
        public String description;
        public int flags;
        public long photo_id;
        public int published_date;
        public String title;
        public String url;
        public long webpage_id;

        public static pageRelatedArticle TLdeserialize(InputSerializedData inputSerializedData, int i, boolean z) {
            return (pageRelatedArticle) TLObject.TLdeserialize(pageRelatedArticle.class, -1282352120 != i ? null : new pageRelatedArticle(), inputSerializedData, i, z);
        }

        @Override // org.telegram.tgnet.TLObject
        public void readParams(InputSerializedData inputSerializedData, boolean z) {
            this.flags = inputSerializedData.readInt32(z);
            this.url = inputSerializedData.readString(z);
            this.webpage_id = inputSerializedData.readInt64(z);
            if (TLObject.hasFlag(this.flags, 1)) {
                this.title = inputSerializedData.readString(z);
            }
            if (TLObject.hasFlag(this.flags, 2)) {
                this.description = inputSerializedData.readString(z);
            }
            if (TLObject.hasFlag(this.flags, 4)) {
                this.photo_id = inputSerializedData.readInt64(z);
            }
            if (TLObject.hasFlag(this.flags, 8)) {
                this.author = inputSerializedData.readString(z);
            }
            if (TLObject.hasFlag(this.flags, 16)) {
                this.published_date = inputSerializedData.readInt32(z);
            }
        }

        @Override // org.telegram.tgnet.TLObject
        public void serializeToStream(OutputSerializedData outputSerializedData) {
            outputSerializedData.writeInt32(constructor);
            outputSerializedData.writeInt32(this.flags);
            outputSerializedData.writeString(this.url);
            outputSerializedData.writeInt64(this.webpage_id);
            if (TLObject.hasFlag(this.flags, 1)) {
                outputSerializedData.writeString(this.title);
            }
            if (TLObject.hasFlag(this.flags, 2)) {
                outputSerializedData.writeString(this.description);
            }
            if (TLObject.hasFlag(this.flags, 4)) {
                outputSerializedData.writeInt64(this.photo_id);
            }
            if (TLObject.hasFlag(this.flags, 8)) {
                outputSerializedData.writeString(this.author);
            }
            if (TLObject.hasFlag(this.flags, 16)) {
                outputSerializedData.writeInt32(this.published_date);
            }
        }
    }

    public static class pageBlockMap extends PageBlock {
        public static final int constructor = -1538310410;
        public TLRPC.GeoPoint geo;

        /* JADX INFO: renamed from: h */
        public int f1050h;

        /* JADX INFO: renamed from: w */
        public int f1051w;
        public int zoom;

        @Override // org.telegram.tgnet.TLObject
        public void readParams(InputSerializedData inputSerializedData, boolean z) {
            this.geo = TLRPC.GeoPoint.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
            this.zoom = inputSerializedData.readInt32(z);
            this.f1051w = inputSerializedData.readInt32(z);
            this.f1050h = inputSerializedData.readInt32(z);
            this.caption = PageCaption.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
        }

        @Override // org.telegram.tgnet.TLObject
        public void serializeToStream(OutputSerializedData outputSerializedData) {
            outputSerializedData.writeInt32(constructor);
            this.geo.serializeToStream(outputSerializedData);
            outputSerializedData.writeInt32(this.zoom);
            outputSerializedData.writeInt32(this.f1051w);
            outputSerializedData.writeInt32(this.f1050h);
            this.caption.serializeToStream(outputSerializedData);
        }
    }

    public static class pageBlockHeading1 extends PageBlock {
        public static final int constructor = -1157691601;

        @Override // org.telegram.tgnet.TLObject
        public void readParams(InputSerializedData inputSerializedData, boolean z) {
            this.text = RichText.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
        }

        @Override // org.telegram.tgnet.TLObject
        public void serializeToStream(OutputSerializedData outputSerializedData) {
            outputSerializedData.writeInt32(constructor);
            this.text.serializeToStream(outputSerializedData);
        }
    }

    public static class pageBlockHeading2 extends PageBlock {
        public static final int constructor = 158018284;

        @Override // org.telegram.tgnet.TLObject
        public void readParams(InputSerializedData inputSerializedData, boolean z) {
            this.text = RichText.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
        }

        @Override // org.telegram.tgnet.TLObject
        public void serializeToStream(OutputSerializedData outputSerializedData) {
            outputSerializedData.writeInt32(constructor);
            this.text.serializeToStream(outputSerializedData);
        }
    }

    public static class pageBlockHeading3 extends PageBlock {
        public static final int constructor = 1743204781;

        @Override // org.telegram.tgnet.TLObject
        public void readParams(InputSerializedData inputSerializedData, boolean z) {
            this.text = RichText.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
        }

        @Override // org.telegram.tgnet.TLObject
        public void serializeToStream(OutputSerializedData outputSerializedData) {
            outputSerializedData.writeInt32(constructor);
            this.text.serializeToStream(outputSerializedData);
        }
    }

    public static class pageBlockHeading4 extends PageBlock {
        public static final int constructor = -1254983893;

        @Override // org.telegram.tgnet.TLObject
        public void readParams(InputSerializedData inputSerializedData, boolean z) {
            this.text = RichText.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
        }

        @Override // org.telegram.tgnet.TLObject
        public void serializeToStream(OutputSerializedData outputSerializedData) {
            outputSerializedData.writeInt32(constructor);
            this.text.serializeToStream(outputSerializedData);
        }
    }

    public static class pageBlockHeading5 extends PageBlock {
        public static final int constructor = -608277398;

        @Override // org.telegram.tgnet.TLObject
        public void readParams(InputSerializedData inputSerializedData, boolean z) {
            this.text = RichText.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
        }

        @Override // org.telegram.tgnet.TLObject
        public void serializeToStream(OutputSerializedData outputSerializedData) {
            outputSerializedData.writeInt32(constructor);
            this.text.serializeToStream(outputSerializedData);
        }
    }

    public static class pageBlockHeading6 extends PageBlock {
        public static final int constructor = 1747599785;

        @Override // org.telegram.tgnet.TLObject
        public void readParams(InputSerializedData inputSerializedData, boolean z) {
            this.text = RichText.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
        }

        @Override // org.telegram.tgnet.TLObject
        public void serializeToStream(OutputSerializedData outputSerializedData) {
            outputSerializedData.writeInt32(constructor);
            this.text.serializeToStream(outputSerializedData);
        }
    }

    public static class pageBlockMath extends PageBlock {
        public static final int constructor = 1493699616;
        public String source;

        @Override // org.telegram.tgnet.TLObject
        public void readParams(InputSerializedData inputSerializedData, boolean z) {
            this.source = inputSerializedData.readString(z);
        }

        @Override // org.telegram.tgnet.TLObject
        public void serializeToStream(OutputSerializedData outputSerializedData) {
            outputSerializedData.writeInt32(constructor);
            outputSerializedData.writeString(this.source);
        }
    }

    public static class pageBlockThinking extends PageBlock {
        public static final int constructor = 1009361890;

        @Override // org.telegram.tgnet.TLObject
        public void readParams(InputSerializedData inputSerializedData, boolean z) {
            this.text = RichText.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
        }

        @Override // org.telegram.tgnet.TLObject
        public void serializeToStream(OutputSerializedData outputSerializedData) {
            outputSerializedData.writeInt32(constructor);
            this.text.serializeToStream(outputSerializedData);
        }
    }

    public static class inputPageBlockMap extends PageBlock {
        public static final int constructor = 1464557951;
        public TLRPC.InputGeoPoint geo;

        /* JADX INFO: renamed from: h */
        public int f1046h;

        /* JADX INFO: renamed from: w */
        public int f1047w;
        public int zoom;

        @Override // org.telegram.tgnet.TLObject
        public void readParams(InputSerializedData inputSerializedData, boolean z) {
            this.geo = TLRPC.InputGeoPoint.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
            this.zoom = inputSerializedData.readInt32(z);
            this.f1047w = inputSerializedData.readInt32(z);
            this.f1046h = inputSerializedData.readInt32(z);
            this.caption = PageCaption.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
        }

        @Override // org.telegram.tgnet.TLObject
        public void serializeToStream(OutputSerializedData outputSerializedData) {
            outputSerializedData.writeInt32(constructor);
            this.geo.serializeToStream(outputSerializedData);
            outputSerializedData.writeInt32(this.zoom);
            outputSerializedData.writeInt32(this.f1047w);
            outputSerializedData.writeInt32(this.f1046h);
            this.caption.serializeToStream(outputSerializedData);
        }
    }

    public static abstract class PageListOrderedItem extends TLObject {
        public boolean checkbox;
        public boolean checked;
        public int flags;
        public String num;
        public String type;
        public int value;

        public static PageListOrderedItem TLdeserialize(InputSerializedData inputSerializedData, int i, boolean z) {
            TLObject tL_pageListOrderedItemBlocks;
            switch (i) {
                case TL_pageListOrderedItemBlocks.constructor /* -1879910928 */:
                    tL_pageListOrderedItemBlocks = new TL_pageListOrderedItemBlocks();
                    break;
                case TL_pageListOrderedItemBlocks_layer226.constructor /* -1730311882 */:
                    tL_pageListOrderedItemBlocks = new TL_pageListOrderedItemBlocks_layer226();
                    break;
                case TL_pageListOrderedItemText.constructor /* 352522633 */:
                    tL_pageListOrderedItemBlocks = new TL_pageListOrderedItemText();
                    break;
                case TL_pageListOrderedItemText_layer226.constructor /* 1577484359 */:
                    tL_pageListOrderedItemBlocks = new TL_pageListOrderedItemText_layer226();
                    break;
                default:
                    tL_pageListOrderedItemBlocks = null;
                    break;
            }
            return (PageListOrderedItem) TLObject.TLdeserialize(PageListOrderedItem.class, tL_pageListOrderedItemBlocks, inputSerializedData, i, z);
        }
    }

    public static class TL_pageListOrderedItemText extends PageListOrderedItem {
        public static final int constructor = 352522633;
        public RichText text;

        @Override // org.telegram.tgnet.TLObject
        public void readParams(InputSerializedData inputSerializedData, boolean z) {
            int int32 = inputSerializedData.readInt32(z);
            this.flags = int32;
            this.checkbox = TLObject.hasFlag(int32, 1);
            this.checked = TLObject.hasFlag(this.flags, 2);
            if (TLObject.hasFlag(this.flags, 4)) {
                this.num = inputSerializedData.readString(z);
            }
            this.text = RichText.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
            if (TLObject.hasFlag(this.flags, 8)) {
                this.value = inputSerializedData.readInt32(z);
            }
            if (TLObject.hasFlag(this.flags, 16)) {
                this.type = inputSerializedData.readString(z);
            }
        }

        @Override // org.telegram.tgnet.TLObject
        public void serializeToStream(OutputSerializedData outputSerializedData) {
            outputSerializedData.writeInt32(constructor);
            int flag = TLObject.setFlag(this.flags, 1, this.checkbox);
            this.flags = flag;
            int flag2 = TLObject.setFlag(flag, 2, this.checked);
            this.flags = flag2;
            int flag3 = TLObject.setFlag(flag2, 4, this.num != null);
            this.flags = flag3;
            int flag4 = TLObject.setFlag(flag3, 16, this.type != null);
            this.flags = flag4;
            outputSerializedData.writeInt32(flag4);
            if (TLObject.hasFlag(this.flags, 4)) {
                outputSerializedData.writeString(this.num);
            }
            this.text.serializeToStream(outputSerializedData);
            if (TLObject.hasFlag(this.flags, 8)) {
                outputSerializedData.writeInt32(this.value);
            }
            if (TLObject.hasFlag(this.flags, 16)) {
                outputSerializedData.writeString(this.type);
            }
        }
    }

    public static class TL_pageListOrderedItemText_layer226 extends TL_pageListOrderedItemText {
        public static final int constructor = 1577484359;

        @Override // org.telegram.tgnet.tl.TL_iv.TL_pageListOrderedItemText, org.telegram.tgnet.TLObject
        public void readParams(InputSerializedData inputSerializedData, boolean z) {
            this.num = inputSerializedData.readString(z);
            this.text = RichText.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
        }

        @Override // org.telegram.tgnet.tl.TL_iv.TL_pageListOrderedItemText, org.telegram.tgnet.TLObject
        public void serializeToStream(OutputSerializedData outputSerializedData) {
            outputSerializedData.writeInt32(constructor);
            outputSerializedData.writeString(this.num);
            this.text.serializeToStream(outputSerializedData);
        }
    }

    public static class TL_pageListOrderedItemBlocks extends PageListOrderedItem {
        public static final int constructor = -1879910928;
        public ArrayList<PageBlock> blocks = new ArrayList<>();

        @Override // org.telegram.tgnet.TLObject
        public void readParams(InputSerializedData inputSerializedData, boolean z) {
            int int32 = inputSerializedData.readInt32(z);
            this.flags = int32;
            this.checkbox = TLObject.hasFlag(int32, 1);
            this.checked = TLObject.hasFlag(this.flags, 2);
            if (TLObject.hasFlag(this.flags, 4)) {
                this.num = inputSerializedData.readString(z);
            }
            this.blocks = Vector.deserialize(inputSerializedData, new TL_iv$RichMessage$$ExternalSyntheticLambda0(), z);
            if (TLObject.hasFlag(this.flags, 8)) {
                this.value = inputSerializedData.readInt32(z);
            }
            if (TLObject.hasFlag(this.flags, 16)) {
                this.type = inputSerializedData.readString(z);
            }
        }

        @Override // org.telegram.tgnet.TLObject
        public void serializeToStream(OutputSerializedData outputSerializedData) {
            outputSerializedData.writeInt32(constructor);
            int flag = TLObject.setFlag(this.flags, 1, this.checkbox);
            this.flags = flag;
            int flag2 = TLObject.setFlag(flag, 2, this.checked);
            this.flags = flag2;
            int flag3 = TLObject.setFlag(flag2, 4, this.num != null);
            this.flags = flag3;
            int flag4 = TLObject.setFlag(flag3, 16, this.type != null);
            this.flags = flag4;
            outputSerializedData.writeInt32(flag4);
            if (TLObject.hasFlag(this.flags, 4)) {
                outputSerializedData.writeString(this.num);
            }
            Vector.serialize(outputSerializedData, this.blocks);
            if (TLObject.hasFlag(this.flags, 8)) {
                outputSerializedData.writeInt32(this.value);
            }
            if (TLObject.hasFlag(this.flags, 16)) {
                outputSerializedData.writeString(this.type);
            }
        }
    }

    public static class TL_pageListOrderedItemBlocks_layer226 extends TL_pageListOrderedItemBlocks {
        public static final int constructor = -1730311882;

        @Override // org.telegram.tgnet.tl.TL_iv.TL_pageListOrderedItemBlocks, org.telegram.tgnet.TLObject
        public void readParams(InputSerializedData inputSerializedData, boolean z) {
            this.num = inputSerializedData.readString(z);
            this.blocks = Vector.deserialize(inputSerializedData, new TL_iv$RichMessage$$ExternalSyntheticLambda0(), z);
        }

        @Override // org.telegram.tgnet.tl.TL_iv.TL_pageListOrderedItemBlocks, org.telegram.tgnet.TLObject
        public void serializeToStream(OutputSerializedData outputSerializedData) {
            outputSerializedData.writeInt32(constructor);
            outputSerializedData.writeString(this.num);
            Vector.serialize(outputSerializedData, this.blocks);
        }
    }

    /* JADX INFO: loaded from: classes.dex */
    public static abstract class PageListItem extends TLObject {
        public boolean checkbox;
        public boolean checked;
        public int flags;

        public static PageListItem TLdeserialize(InputSerializedData inputSerializedData, int i, boolean z) {
            TLObject tL_pageListItemText_layer226;
            switch (i) {
                case TL_pageListItemText_layer226.constructor /* -1188055347 */:
                    tL_pageListItemText_layer226 = new TL_pageListItemText_layer226();
                    break;
                case TL_pageListItemBlocks_226.constructor /* 635466748 */:
                    tL_pageListItemText_layer226 = new TL_pageListItemBlocks_226();
                    break;
                case TL_pageListItemText.constructor /* 794323004 */:
                    tL_pageListItemText_layer226 = new TL_pageListItemText();
                    break;
                case TL_pageListItemBlocks.constructor /* 1674209194 */:
                    tL_pageListItemText_layer226 = new TL_pageListItemBlocks();
                    break;
                default:
                    tL_pageListItemText_layer226 = null;
                    break;
            }
            return (PageListItem) TLObject.TLdeserialize(PageListItem.class, tL_pageListItemText_layer226, inputSerializedData, i, z);
        }
    }

    /* JADX INFO: loaded from: classes.dex */
    public static class TL_pageListItemText extends PageListItem {
        public static final int constructor = 794323004;
        public RichText text;

        @Override // org.telegram.tgnet.TLObject
        public void readParams(InputSerializedData inputSerializedData, boolean z) {
            int int32 = inputSerializedData.readInt32(z);
            this.flags = int32;
            this.checkbox = TLObject.hasFlag(int32, 1);
            this.checked = TLObject.hasFlag(this.flags, 2);
            this.text = RichText.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
        }

        @Override // org.telegram.tgnet.TLObject
        public void serializeToStream(OutputSerializedData outputSerializedData) {
            outputSerializedData.writeInt32(constructor);
            int flag = TLObject.setFlag(this.flags, 1, this.checkbox);
            this.flags = flag;
            int flag2 = TLObject.setFlag(flag, 2, this.checked);
            this.flags = flag2;
            outputSerializedData.writeInt32(flag2);
            this.text.serializeToStream(outputSerializedData);
        }
    }

    public static class TL_pageListItemText_layer226 extends TL_pageListItemText {
        public static final int constructor = -1188055347;

        @Override // org.telegram.tgnet.tl.TL_iv.TL_pageListItemText, org.telegram.tgnet.TLObject
        public void readParams(InputSerializedData inputSerializedData, boolean z) {
            this.text = RichText.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
        }

        @Override // org.telegram.tgnet.tl.TL_iv.TL_pageListItemText, org.telegram.tgnet.TLObject
        public void serializeToStream(OutputSerializedData outputSerializedData) {
            outputSerializedData.writeInt32(constructor);
            this.text.serializeToStream(outputSerializedData);
        }
    }

    /* JADX INFO: loaded from: classes.dex */
    public static class TL_pageListItemBlocks extends PageListItem {
        public static final int constructor = 1674209194;
        public ArrayList<PageBlock> blocks = new ArrayList<>();

        @Override // org.telegram.tgnet.TLObject
        public void readParams(InputSerializedData inputSerializedData, boolean z) {
            int int32 = inputSerializedData.readInt32(z);
            this.flags = int32;
            this.checkbox = TLObject.hasFlag(int32, 1);
            this.checked = TLObject.hasFlag(this.flags, 2);
            this.blocks = Vector.deserialize(inputSerializedData, new TL_iv$RichMessage$$ExternalSyntheticLambda0(), z);
        }

        @Override // org.telegram.tgnet.TLObject
        public void serializeToStream(OutputSerializedData outputSerializedData) {
            outputSerializedData.writeInt32(constructor);
            int flag = TLObject.setFlag(this.flags, 1, this.checkbox);
            this.flags = flag;
            int flag2 = TLObject.setFlag(flag, 2, this.checked);
            this.flags = flag2;
            outputSerializedData.writeInt32(flag2);
            Vector.serialize(outputSerializedData, this.blocks);
        }
    }

    public static class TL_pageListItemBlocks_226 extends TL_pageListItemBlocks {
        public static final int constructor = 635466748;

        @Override // org.telegram.tgnet.tl.TL_iv.TL_pageListItemBlocks, org.telegram.tgnet.TLObject
        public void readParams(InputSerializedData inputSerializedData, boolean z) {
            this.blocks = Vector.deserialize(inputSerializedData, new TL_iv$RichMessage$$ExternalSyntheticLambda0(), z);
        }

        @Override // org.telegram.tgnet.tl.TL_iv.TL_pageListItemBlocks, org.telegram.tgnet.TLObject
        public void serializeToStream(OutputSerializedData outputSerializedData) {
            outputSerializedData.writeInt32(constructor);
            Vector.serialize(outputSerializedData, this.blocks);
        }
    }

    /* JADX INFO: loaded from: classes.dex */
    public static class PageCaption extends TLObject {
        public static final int constructor = 1869903447;
        public RichText credit;
        public RichText text;

        public static PageCaption TLdeserialize(InputSerializedData inputSerializedData, int i, boolean z) {
            return (PageCaption) TLObject.TLdeserialize(PageCaption.class, 1869903447 != i ? null : new PageCaption(), inputSerializedData, i, z);
        }

        @Override // org.telegram.tgnet.TLObject
        public void readParams(InputSerializedData inputSerializedData, boolean z) {
            this.text = RichText.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
            this.credit = RichText.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
        }

        @Override // org.telegram.tgnet.TLObject
        public void serializeToStream(OutputSerializedData outputSerializedData) {
            outputSerializedData.writeInt32(constructor);
            this.text.serializeToStream(outputSerializedData);
            this.credit.serializeToStream(outputSerializedData);
        }
    }

    public static class getRichMessage extends TLMethod<TLRPC.messages_Messages> {
        public static final int constructor = 1343580623;
        public int id;
        public TLRPC.InputPeer peer;

        @Override // org.telegram.tgnet.TLMethod
        public TLRPC.messages_Messages deserializeResponseT(InputSerializedData inputSerializedData, int i, boolean z) {
            return TLRPC.messages_Messages.TLdeserialize(inputSerializedData, i, z);
        }

        @Override // org.telegram.tgnet.TLObject
        public void serializeToStream(OutputSerializedData outputSerializedData) {
            outputSerializedData.writeInt32(constructor);
            this.peer.serializeToStream(outputSerializedData);
            outputSerializedData.writeInt32(this.id);
        }
    }
}
