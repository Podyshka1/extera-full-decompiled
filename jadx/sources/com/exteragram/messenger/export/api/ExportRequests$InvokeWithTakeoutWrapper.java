package com.exteragram.messenger.export.api;

import org.telegram.messenger.BuildVars;
import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.Vector;
import org.telegram.tgnet.p028tl.TL_account;
import org.telegram.tgnet.p028tl.TL_stories;

/* JADX INFO: loaded from: classes4.dex */
public class ExportRequests$InvokeWithTakeoutWrapper extends TLObject {
    public TLObject query;
    public long takeout_id;

    @Override // org.telegram.tgnet.TLObject
    public TLObject deserializeResponse(InputSerializedData inputSerializedData, int i, boolean z) {
        Vector vector;
        switch (i) {
            case -1938715001:
            case -948520370:
            case 1595959062:
                return TLRPC.messages_Messages.TLdeserialize(inputSerializedData, i, z);
            case -1916114267:
            case 352657236:
                return TLRPC.photos_Photos.TLdeserialize(inputSerializedData, i, z);
            case -1720552011:
            case -1132882121:
                return TLRPC.Bool.TLdeserialize(inputSerializedData, i, z);
            case -1663561404:
            case 1694474197:
                return TLRPC.messages_Chats.TLdeserialize(inputSerializedData, i, z);
            case -1255369827:
            case -567906571:
            case 1891070632:
                return TLRPC.contacts_TopPeers.TLdeserialize(inputSerializedData, i, z);
            case TL_account.webAuthorizations.constructor /* -313079300 */:
                return TL_account.webAuthorizations.TLdeserialize(inputSerializedData, i, z);
            case 157948117:
                return TLRPC.upload_File.TLdeserialize(inputSerializedData, i, z);
            case 364538944:
            case 1910543603:
                return TLRPC.messages_Dialogs.TLdeserialize(inputSerializedData, i, z);
            case 481674261:
                TLObject tLObject = this.query;
                if (tLObject instanceof ExportRequests$getSplitRanges) {
                    vector = new Vector(new C1089x420a2705());
                } else if (tLObject instanceof ExportRequests$TL_contacts_getSaved) {
                    vector = new Vector(new C1090x420a2706());
                } else {
                    vector = tLObject instanceof TLRPC.TL_messages_getCustomEmojiDocuments ? new Vector(new C1091x420a2707()) : null;
                }
                TLObject tLObject2 = this.query;
                if (tLObject2 != null) {
                    tLObject2.freeResources();
                }
                if (vector == null) {
                    if (!BuildVars.DEBUG_VERSION) {
                        return null;
                    }
                    throw new IllegalStateException("unable to deserialize vector with query: " + this.query);
                }
                vector.readParams(inputSerializedData, z);
                return vector;
            case 997004590:
                return TLRPC.TL_users_userFull.TLdeserialize(inputSerializedData, i, z);
            case TL_account.authorizations.constructor /* 1275039392 */:
                return TL_account.authorizations.TLdeserialize(inputSerializedData, i, z);
            case TL_stories.TL_stories_stories.constructor /* 1673780490 */:
                return TL_stories.TL_stories_stories.TLdeserialize(inputSerializedData, i, z);
            default:
                throw new IllegalArgumentException("cannot deserialize response with constructor: 0x" + Integer.toHexString(i));
        }
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(OutputSerializedData outputSerializedData) {
        outputSerializedData.writeInt32(-1398145746);
        outputSerializedData.writeInt64(this.takeout_id);
        TLObject tLObject = this.query;
        if ((tLObject instanceof ExportRequests$TL_contacts_getSaved) || (tLObject instanceof ExportRequests$getSplitRanges) || (tLObject instanceof TLRPC.TL_messages_getCustomEmojiDocuments)) {
            tLObject.disableFree = true;
        }
        tLObject.serializeToStream(outputSerializedData);
    }
}
