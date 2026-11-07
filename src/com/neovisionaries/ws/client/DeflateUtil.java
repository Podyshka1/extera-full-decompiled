package com.neovisionaries.ws.client;

import androidx.mediarouter.media.GlobalMediaRouter;

/* JADX INFO: loaded from: classes5.dex */
abstract class DeflateUtil {
    private static int[] INDICES_FROM_CODE_LENGTH_ORDER = {16, 17, 18, 0, 8, 7, 9, 6, 10, 5, 11, 4, 12, 3, 13, 2, 14, 1, 15};

    public static void readDynamicTables(ByteArray byteArray, int[] iArr, Huffman[] huffmanArr) throws FormatException {
        int bits = byteArray.readBits(iArr, 5) + GlobalMediaRouter.CallbackHandler.MSG_ROUTE_ADDED;
        int bits2 = byteArray.readBits(iArr, 5) + 1;
        int bits3 = byteArray.readBits(iArr, 4) + 4;
        int[] iArr2 = new int[19];
        for (int i = 0; i < bits3; i++) {
            iArr2[codeLengthOrderToIndex(i)] = (byte) byteArray.readBits(iArr, 3);
        }
        Huffman huffman = new Huffman(iArr2);
        int[] iArr3 = new int[bits];
        readCodeLengths(byteArray, iArr, iArr3, huffman);
        Huffman huffman2 = new Huffman(iArr3);
        int[] iArr4 = new int[bits2];
        readCodeLengths(byteArray, iArr, iArr4, huffman);
        Huffman huffman3 = new Huffman(iArr4);
        huffmanArr[0] = huffman2;
        huffmanArr[1] = huffman3;
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x004d A[LOOP:1: B:19:0x004b->B:20:0x004d, LOOP_END] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static void readCodeLengths(ByteArray byteArray, int[] iArr, int[] iArr2, Huffman huffman) throws FormatException {
        int i;
        int bits;
        int bits2;
        int i2;
        int i3 = 0;
        while (i3 < iArr2.length) {
            int sym = huffman.readSym(byteArray, iArr);
            if (sym >= 0 && sym <= 15) {
                iArr2[i3] = sym;
            } else {
                switch (sym) {
                    case 16:
                        i = iArr2[i3 - 1];
                        bits = 3 + byteArray.readBits(iArr, 2);
                        for (i2 = 0; i2 < bits; i2++) {
                            iArr2[i3 + i2] = i;
                        }
                        i3 += bits - 1;
                        break;
                    case 17:
                        bits2 = byteArray.readBits(iArr, 3) + 3;
                        bits = bits2;
                        i = 0;
                        while (i2 < bits) {
                        }
                        i3 += bits - 1;
                        break;
                    case 18:
                        bits2 = byteArray.readBits(iArr, 7) + 11;
                        bits = bits2;
                        i = 0;
                        while (i2 < bits) {
                        }
                        i3 += bits - 1;
                        break;
                    default:
                        throw new FormatException(String.format("[%s] Bad code length '%d' at the bit index '%d'.", DeflateUtil.class.getSimpleName(), Integer.valueOf(sym), iArr));
                }
            }
            i3++;
        }
    }

    private static int codeLengthOrderToIndex(int i) {
        return INDICES_FROM_CODE_LENGTH_ORDER[i];
    }

    public static int readLength(ByteArray byteArray, int[] iArr, int i) throws FormatException {
        int i2;
        int i3 = 1;
        switch (i) {
            case GlobalMediaRouter.CallbackHandler.MSG_ROUTE_ADDED /* 257 */:
            case GlobalMediaRouter.CallbackHandler.MSG_ROUTE_REMOVED /* 258 */:
            case GlobalMediaRouter.CallbackHandler.MSG_ROUTE_CHANGED /* 259 */:
            case GlobalMediaRouter.CallbackHandler.MSG_ROUTE_VOLUME_CHANGED /* 260 */:
            case GlobalMediaRouter.CallbackHandler.MSG_ROUTE_PRESENTATION_DISPLAY_CHANGED /* 261 */:
            case GlobalMediaRouter.CallbackHandler.MSG_ROUTE_SELECTED /* 262 */:
            case GlobalMediaRouter.CallbackHandler.MSG_ROUTE_UNSELECTED /* 263 */:
            case GlobalMediaRouter.CallbackHandler.MSG_ROUTE_ANOTHER_SELECTED /* 264 */:
                return i - 254;
            case GlobalMediaRouter.CallbackHandler.MSG_ROUTE_CONNECTED /* 265 */:
                i2 = 11;
                return i2 + byteArray.readBits(iArr, i3);
            case GlobalMediaRouter.CallbackHandler.MSG_ROUTE_DISCONNECTED /* 266 */:
                i2 = 13;
                return i2 + byteArray.readBits(iArr, i3);
            case 267:
                i2 = 15;
                return i2 + byteArray.readBits(iArr, i3);
            case 268:
                i2 = 17;
                return i2 + byteArray.readBits(iArr, i3);
            case 269:
                i2 = 19;
                i3 = 2;
                return i2 + byteArray.readBits(iArr, i3);
            case 270:
                i2 = 23;
                i3 = 2;
                return i2 + byteArray.readBits(iArr, i3);
            case 271:
                i2 = 27;
                i3 = 2;
                return i2 + byteArray.readBits(iArr, i3);
            case 272:
                i2 = 31;
                i3 = 2;
                return i2 + byteArray.readBits(iArr, i3);
            case 273:
                i2 = 35;
                i3 = 3;
                return i2 + byteArray.readBits(iArr, i3);
            case 274:
                i2 = 43;
                i3 = 3;
                return i2 + byteArray.readBits(iArr, i3);
            case 275:
                i2 = 51;
                i3 = 3;
                return i2 + byteArray.readBits(iArr, i3);
            case 276:
                i2 = 59;
                i3 = 3;
                return i2 + byteArray.readBits(iArr, i3);
            case 277:
                i2 = 67;
                i3 = 4;
                return i2 + byteArray.readBits(iArr, i3);
            case 278:
                i2 = 83;
                i3 = 4;
                return i2 + byteArray.readBits(iArr, i3);
            case 279:
                i2 = 99;
                i3 = 4;
                return i2 + byteArray.readBits(iArr, i3);
            case 280:
                i2 = 115;
                i3 = 4;
                return i2 + byteArray.readBits(iArr, i3);
            case 281:
                i2 = 131;
                i3 = 5;
                return i2 + byteArray.readBits(iArr, i3);
            case 282:
                i2 = 163;
                i3 = 5;
                return i2 + byteArray.readBits(iArr, i3);
            case 283:
                i2 = 195;
                i3 = 5;
                return i2 + byteArray.readBits(iArr, i3);
            case 284:
                i2 = 227;
                i3 = 5;
                return i2 + byteArray.readBits(iArr, i3);
            case 285:
                return GlobalMediaRouter.CallbackHandler.MSG_ROUTE_REMOVED;
            default:
                throw new FormatException(String.format("[%s] Bad literal/length code '%d' at the bit index '%d'.", DeflateUtil.class.getSimpleName(), Integer.valueOf(i), Integer.valueOf(iArr[0])));
        }
    }

    public static int readDistance(ByteArray byteArray, int[] iArr, Huffman huffman) throws FormatException {
        int i;
        int sym = huffman.readSym(byteArray, iArr);
        int i2 = 2;
        int i3 = 5;
        switch (sym) {
            case 0:
            case 1:
            case 2:
            case 3:
                return sym + 1;
            case 4:
                i2 = 1;
                return i3 + byteArray.readBits(iArr, i2);
            case 5:
                i2 = 1;
                i3 = 7;
                return i3 + byteArray.readBits(iArr, i2);
            case 6:
                i3 = 9;
                return i3 + byteArray.readBits(iArr, i2);
            case 7:
                i3 = 13;
                return i3 + byteArray.readBits(iArr, i2);
            case 8:
                i3 = 17;
                i2 = 3;
                return i3 + byteArray.readBits(iArr, i2);
            case 9:
                i3 = 25;
                i2 = 3;
                return i3 + byteArray.readBits(iArr, i2);
            case 10:
                i3 = 33;
                i2 = 4;
                return i3 + byteArray.readBits(iArr, i2);
            case 11:
                i3 = 49;
                i2 = 4;
                return i3 + byteArray.readBits(iArr, i2);
            case 12:
                i = 65;
                i2 = 5;
                i3 = i;
                return i3 + byteArray.readBits(iArr, i2);
            case 13:
                i = 97;
                i2 = 5;
                i3 = i;
                return i3 + byteArray.readBits(iArr, i2);
            case 14:
                i3 = 129;
                i2 = 6;
                return i3 + byteArray.readBits(iArr, i2);
            case 15:
                i3 = 193;
                i2 = 6;
                return i3 + byteArray.readBits(iArr, i2);
            case 16:
                i3 = GlobalMediaRouter.CallbackHandler.MSG_ROUTE_ADDED;
                i2 = 7;
                return i3 + byteArray.readBits(iArr, i2);
            case 17:
                i3 = 385;
                i2 = 7;
                return i3 + byteArray.readBits(iArr, i2);
            case 18:
                i3 = GlobalMediaRouter.CallbackHandler.MSG_PROVIDER_ADDED;
                i2 = 8;
                return i3 + byteArray.readBits(iArr, i2);
            case 19:
                i3 = GlobalMediaRouter.CallbackHandler.MSG_ROUTER_PARAMS_CHANGED;
                i2 = 8;
                return i3 + byteArray.readBits(iArr, i2);
            case 20:
                i3 = 1025;
                i2 = 9;
                return i3 + byteArray.readBits(iArr, i2);
            case 21:
                i3 = 1537;
                i2 = 9;
                return i3 + byteArray.readBits(iArr, i2);
            case 22:
                i3 = 2049;
                i2 = 10;
                return i3 + byteArray.readBits(iArr, i2);
            case 23:
                i3 = 3073;
                i2 = 10;
                return i3 + byteArray.readBits(iArr, i2);
            case 24:
                i3 = 4097;
                i2 = 11;
                return i3 + byteArray.readBits(iArr, i2);
            case 25:
                i3 = 6145;
                i2 = 11;
                return i3 + byteArray.readBits(iArr, i2);
            case 26:
                i3 = 8193;
                i2 = 12;
                return i3 + byteArray.readBits(iArr, i2);
            case 27:
                i3 = 12289;
                i2 = 12;
                return i3 + byteArray.readBits(iArr, i2);
            case 28:
                i3 = 16385;
                i2 = 13;
                return i3 + byteArray.readBits(iArr, i2);
            case 29:
                i3 = 24577;
                i2 = 13;
                return i3 + byteArray.readBits(iArr, i2);
            default:
                throw new FormatException(String.format("[%s] Bad distance code '%d' at the bit index '%d'.", DeflateUtil.class.getSimpleName(), Integer.valueOf(sym), Integer.valueOf(iArr[0])));
        }
    }
}
