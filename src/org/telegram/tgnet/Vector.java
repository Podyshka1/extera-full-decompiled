package org.telegram.tgnet;

import java.util.ArrayList;
import org.telegram.messenger.Utilities;
import p022j$.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public class Vector extends TLObject {
    private final TLDeserializer itemDeserializer;
    public final ArrayList objects = new ArrayList();

    public interface TLDeserializer {
        TLObject deserialize(InputSerializedData inputSerializedData, int i, boolean z);
    }

    public Vector(TLDeserializer tLDeserializer) {
        this.itemDeserializer = tLDeserializer;
    }

    public static Vector TLDeserialize(InputSerializedData inputSerializedData, int i, boolean z, TLDeserializer tLDeserializer) {
        if (i != 481674261) {
            TLParseException.doThrowOrLog(inputSerializedData, "Vector", i, z);
            return null;
        }
        Vector vector = new Vector(tLDeserializer);
        vector.readParams(inputSerializedData, z);
        return vector;
    }

    @Override // org.telegram.tgnet.TLObject
    public void readParams(InputSerializedData inputSerializedData, boolean z) {
        int int32 = inputSerializedData.readInt32(z);
        for (int i = 0; i < int32; i++) {
            this.objects.add(this.itemDeserializer.deserialize(inputSerializedData, inputSerializedData.readInt32(z), z));
        }
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(OutputSerializedData outputSerializedData) {
        serialize(outputSerializedData, this.objects);
    }

    /* JADX INFO: loaded from: classes5.dex */
    public static class Int extends TLObject {
        public int value;

        public Int(int i) {
            this.value = i;
        }

        public static Int TLDeserialize(InputSerializedData inputSerializedData, int i, boolean z) {
            return new Int(i);
        }

        @Override // org.telegram.tgnet.TLObject
        public void readParams(InputSerializedData inputSerializedData, boolean z) {
            this.value = inputSerializedData.readInt32(z);
        }

        @Override // org.telegram.tgnet.TLObject
        public void serializeToStream(OutputSerializedData outputSerializedData) {
            outputSerializedData.writeInt32(this.value);
        }
    }

    public static Vector TLDeserializeInt(InputSerializedData inputSerializedData, int i, boolean z) {
        if (i != 481674261) {
            TLParseException.doThrowOrLog(inputSerializedData, "StarGift", i, z);
            return null;
        }
        Vector vector = new Vector(new Vector$$ExternalSyntheticLambda5());
        vector.readParams(inputSerializedData, z);
        return vector;
    }

    public ArrayList toIntArray() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = this.objects;
        int size = arrayList2.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList2.get(i);
            i++;
            TLObject tLObject = (TLObject) obj;
            if (tLObject instanceof Int) {
                arrayList.add(Integer.valueOf(((Int) tLObject).value));
            }
        }
        return arrayList;
    }

    public static Vector TLDeserializeLong(InputSerializedData inputSerializedData, int i, boolean z) {
        if (i != 481674261) {
            TLParseException.doThrowOrLog(inputSerializedData, "Vector", i, z);
            return null;
        }
        Vector vector = new Vector(new Vector$$ExternalSyntheticLambda5());
        vector.readParams(inputSerializedData, z);
        return vector;
    }

    public static void serialize(OutputSerializedData outputSerializedData, ArrayList arrayList) {
        outputSerializedData.writeInt32(481674261);
        outputSerializedData.writeInt32(arrayList.size());
        for (int i = 0; i < arrayList.size(); i++) {
            ((TLObject) arrayList.get(i)).serializeToStream(outputSerializedData);
        }
    }

    public static void serialize(OutputSerializedData outputSerializedData, Utilities.Callback callback, ArrayList arrayList) {
        outputSerializedData.writeInt32(481674261);
        outputSerializedData.writeInt32(arrayList.size());
        for (int i = 0; i < arrayList.size(); i++) {
            callback.run(arrayList.get(i));
        }
    }

    public static void serializeInt(OutputSerializedData outputSerializedData, ArrayList arrayList) {
        Objects.requireNonNull(outputSerializedData);
        serialize(outputSerializedData, new Vector$$ExternalSyntheticLambda3(outputSerializedData), arrayList);
    }

    public static void serializeLong(final OutputSerializedData outputSerializedData, ArrayList arrayList) {
        Objects.requireNonNull(outputSerializedData);
        serialize(outputSerializedData, new Utilities.Callback() { // from class: org.telegram.tgnet.Vector$$ExternalSyntheticLambda2
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                outputSerializedData.writeInt64(((Long) obj).longValue());
            }
        }, arrayList);
    }

    public static void serializeString(final OutputSerializedData outputSerializedData, ArrayList arrayList) {
        Objects.requireNonNull(outputSerializedData);
        serialize(outputSerializedData, new Utilities.Callback() { // from class: org.telegram.tgnet.Vector$$ExternalSyntheticLambda7
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                outputSerializedData.writeString((String) obj);
            }
        }, arrayList);
    }

    public static ArrayList deserialize(InputSerializedData inputSerializedData, Utilities.CallbackReturn callbackReturn, boolean z) {
        int int32 = inputSerializedData.readInt32(z);
        if (int32 != 481674261) {
            TLParseException.doThrowOrLog(inputSerializedData, "Vector", int32, z);
            return new ArrayList();
        }
        int int322 = inputSerializedData.readInt32(z);
        ArrayList arrayList = new ArrayList(int322);
        for (int i = 0; i < int322; i++) {
            arrayList.add(callbackReturn.run(Boolean.valueOf(z)));
        }
        return arrayList;
    }

    public static ArrayList deserializeInt(final InputSerializedData inputSerializedData, boolean z) {
        Objects.requireNonNull(inputSerializedData);
        return deserialize(inputSerializedData, new Utilities.CallbackReturn() { // from class: org.telegram.tgnet.Vector$$ExternalSyntheticLambda1
            @Override // org.telegram.messenger.Utilities.CallbackReturn
            public final Object run(Object obj) {
                return Integer.valueOf(inputSerializedData.readInt32(((Boolean) obj).booleanValue()));
            }
        }, z);
    }

    public static ArrayList deserializeLong(final InputSerializedData inputSerializedData, boolean z) {
        Objects.requireNonNull(inputSerializedData);
        return deserialize(inputSerializedData, new Utilities.CallbackReturn() { // from class: org.telegram.tgnet.Vector$$ExternalSyntheticLambda0
            @Override // org.telegram.messenger.Utilities.CallbackReturn
            public final Object run(Object obj) {
                return Long.valueOf(inputSerializedData.readInt64(((Boolean) obj).booleanValue()));
            }
        }, z);
    }

    public static ArrayList deserializeString(final InputSerializedData inputSerializedData, boolean z) {
        Objects.requireNonNull(inputSerializedData);
        return deserialize(inputSerializedData, new Utilities.CallbackReturn() { // from class: org.telegram.tgnet.Vector$$ExternalSyntheticLambda4
            @Override // org.telegram.messenger.Utilities.CallbackReturn
            public final Object run(Object obj) {
                return inputSerializedData.readString(((Boolean) obj).booleanValue());
            }
        }, z);
    }

    public static ArrayList deserializeByteArray(final InputSerializedData inputSerializedData, boolean z) {
        Objects.requireNonNull(inputSerializedData);
        return deserialize(inputSerializedData, new Utilities.CallbackReturn() { // from class: org.telegram.tgnet.Vector$$ExternalSyntheticLambda6
            @Override // org.telegram.messenger.Utilities.CallbackReturn
            public final Object run(Object obj) {
                return inputSerializedData.readByteArray(((Boolean) obj).booleanValue());
            }
        }, z);
    }

    public static ArrayList deserialize(InputSerializedData inputSerializedData, TLDeserializer tLDeserializer, boolean z) {
        int int32 = inputSerializedData.readInt32(z);
        if (int32 != 481674261) {
            TLParseException.doThrowOrLog(inputSerializedData, "Vector", int32, z);
            return new ArrayList();
        }
        int int322 = inputSerializedData.readInt32(z);
        ArrayList arrayList = new ArrayList(int322);
        for (int i = 0; i < int322; i++) {
            TLObject tLObjectDeserialize = tLDeserializer.deserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
            if (tLObjectDeserialize != null) {
                arrayList.add(tLObjectDeserialize);
            }
        }
        return arrayList;
    }
}
