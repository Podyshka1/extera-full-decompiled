package org.telegram.tgnet.tl;

import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.TLObject;

/* JADX INFO: loaded from: classes5.dex */
public class TL_fragment {

    public static class InputCollectible extends TLObject {
        public static InputCollectible TLdeserialize(InputSerializedData inputSerializedData, int i, boolean z) {
            TLObject tL_inputCollectiblePhone;
            if (i != -1562241884) {
                tL_inputCollectiblePhone = i != -476815191 ? null : new TL_inputCollectibleUsername();
            } else {
                tL_inputCollectiblePhone = new TL_inputCollectiblePhone();
            }
            return (InputCollectible) TLObject.TLdeserialize(InputCollectible.class, tL_inputCollectiblePhone, inputSerializedData, i, z);
        }
    }

    public static class TL_inputCollectibleUsername extends InputCollectible {
        public static final int constructor = -476815191;
        public String username;

        @Override // org.telegram.tgnet.TLObject
        public void serializeToStream(OutputSerializedData outputSerializedData) {
            outputSerializedData.writeInt32(constructor);
            outputSerializedData.writeString(this.username);
        }

        @Override // org.telegram.tgnet.TLObject
        public void readParams(InputSerializedData inputSerializedData, boolean z) {
            this.username = inputSerializedData.readString(z);
        }
    }

    public static class TL_inputCollectiblePhone extends InputCollectible {
        public static final int constructor = -1562241884;
        public String phone;

        @Override // org.telegram.tgnet.TLObject
        public void serializeToStream(OutputSerializedData outputSerializedData) {
            outputSerializedData.writeInt32(constructor);
            outputSerializedData.writeString(this.phone);
        }

        @Override // org.telegram.tgnet.TLObject
        public void readParams(InputSerializedData inputSerializedData, boolean z) {
            this.phone = inputSerializedData.readString(z);
        }
    }

    public static class TL_collectibleInfo extends TLObject {
        public static final int constructor = 1857945489;
        public long amount;
        public long crypto_amount;
        public String crypto_currency;
        public String currency;
        public int purchase_date;
        public String url;

        public static TL_collectibleInfo TLdeserialize(InputSerializedData inputSerializedData, int i, boolean z) {
            return (TL_collectibleInfo) TLObject.TLdeserialize(TL_collectibleInfo.class, 1857945489 != i ? null : new TL_collectibleInfo(), inputSerializedData, i, z);
        }

        @Override // org.telegram.tgnet.TLObject
        public void serializeToStream(OutputSerializedData outputSerializedData) {
            outputSerializedData.writeInt32(constructor);
            outputSerializedData.writeInt32(this.purchase_date);
            outputSerializedData.writeString(this.currency);
            outputSerializedData.writeInt64(this.amount);
            outputSerializedData.writeString(this.crypto_currency);
            outputSerializedData.writeInt64(this.crypto_amount);
            outputSerializedData.writeString(this.url);
        }

        @Override // org.telegram.tgnet.TLObject
        public void readParams(InputSerializedData inputSerializedData, boolean z) {
            this.purchase_date = inputSerializedData.readInt32(z);
            this.currency = inputSerializedData.readString(z);
            this.amount = inputSerializedData.readInt64(z);
            this.crypto_currency = inputSerializedData.readString(z);
            this.crypto_amount = inputSerializedData.readInt64(z);
            this.url = inputSerializedData.readString(z);
        }
    }

    public static class TL_getCollectibleInfo extends TLObject {
        public static final int constructor = -1105295942;
        public InputCollectible collectible;

        @Override // org.telegram.tgnet.TLObject
        public TLObject deserializeResponse(InputSerializedData inputSerializedData, int i, boolean z) {
            return TL_collectibleInfo.TLdeserialize(inputSerializedData, i, z);
        }

        @Override // org.telegram.tgnet.TLObject
        public void serializeToStream(OutputSerializedData outputSerializedData) {
            outputSerializedData.writeInt32(constructor);
            this.collectible.serializeToStream(outputSerializedData);
        }
    }
}
