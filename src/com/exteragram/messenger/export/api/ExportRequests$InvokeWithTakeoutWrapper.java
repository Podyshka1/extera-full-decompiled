package com.exteragram.messenger.export.api;

import com.android.dx.dex.code.CstInsn$$ExternalSyntheticBUOutline0;
import okio.Buffer$$ExternalSyntheticBUOutline4;
import org.telegram.messenger.BuildVars;
import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.Vector;
import org.telegram.tgnet.tl.TL_account;
import org.telegram.tgnet.tl.TL_stories;

/* JADX INFO: loaded from: classes4.dex */
public class ExportRequests$InvokeWithTakeoutWrapper extends TLObject {
    public TLObject query;
    public long takeout_id;

    @Override // org.telegram.tgnet.TLObject
    public TLObject deserializeResponse(InputSerializedData inputSerializedData, int i, boolean z) {
        Vector vector;
        switch (i) {
            case TLRPC.TL_messages_messages_layer215.constructor /* -1938715001 */:
            case TLRPC.TL_messages_channelMessages.constructor /* -948520370 */:
            case TLRPC.TL_messages_messagesSlice.constructor /* 1595959062 */:
                return TLRPC.messages_Messages.TLdeserialize(inputSerializedData, i, z);
            case TLRPC.TL_photos_photos.constructor /* -1916114267 */:
            case TLRPC.TL_photos_photosSlice.constructor /* 352657236 */:
                return TLRPC.photos_Photos.TLdeserialize(inputSerializedData, i, z);
            case TLRPC.TL_boolTrue.constructor /* -1720552011 */:
            case TLRPC.TL_boolFalse.constructor /* -1132882121 */:
                return TLRPC.Bool.TLdeserialize(inputSerializedData, i, z);
            case TLRPC.TL_messages_chatsSlice.constructor /* -1663561404 */:
            case TLRPC.TL_messages_chats.constructor /* 1694474197 */:
                return TLRPC.messages_Chats.TLdeserialize(inputSerializedData, i, z);
            case TLRPC.TL_contacts_topPeersDisabled.constructor /* -1255369827 */:
            case TLRPC.TL_contacts_topPeersNotModified.constructor /* -567906571 */:
            case TLRPC.TL_contacts_topPeers.constructor /* 1891070632 */:
                return TLRPC.contacts_TopPeers.TLdeserialize(inputSerializedData, i, z);
            case TL_account.webAuthorizations.constructor /* -313079300 */:
                return TL_account.webAuthorizations.TLdeserialize(inputSerializedData, i, z);
            case TLRPC.TL_upload_file.constructor /* 157948117 */:
                return TLRPC.upload_File.TLdeserialize(inputSerializedData, i, z);
            case TLRPC.TL_messages_dialogs.constructor /* 364538944 */:
            case TLRPC.TL_messages_dialogsSlice.constructor /* 1910543603 */:
                return TLRPC.messages_Dialogs.TLdeserialize(inputSerializedData, i, z);
            case Vector.constructor /* 481674261 */:
                TLObject tLObject = this.query;
                if (tLObject instanceof ExportRequests$getSplitRanges) {
                    vector = new Vector(new C1288x420a2705());
                } else if (tLObject instanceof ExportRequests$TL_contacts_getSaved) {
                    vector = new Vector(new C1289x420a2706());
                } else {
                    vector = tLObject instanceof TLRPC.TL_messages_getCustomEmojiDocuments ? new Vector(new C1290x420a2707()) : null;
                }
                TLObject tLObject2 = this.query;
                if (tLObject2 != null) {
                    tLObject2.freeResources();
                }
                if (vector == null) {
                    if (!BuildVars.DEBUG_VERSION) {
                        return null;
                    }
                    CstInsn$$ExternalSyntheticBUOutline0.m222m("unable to deserialize vector with query: ", this.query);
                    return null;
                }
                vector.readParams(inputSerializedData, z);
                return vector;
            case TLRPC.TL_users_userFull.constructor /* 997004590 */:
                return TLRPC.TL_users_userFull.TLdeserialize(inputSerializedData, i, z);
            case TL_account.authorizations.constructor /* 1275039392 */:
                return TL_account.authorizations.TLdeserialize(inputSerializedData, i, z);
            case TL_stories.TL_stories_stories.constructor /* 1673780490 */:
                return TL_stories.TL_stories_stories.TLdeserialize(inputSerializedData, i, z);
            default:
                Buffer$$ExternalSyntheticBUOutline4.m919m("cannot deserialize response with constructor: 0x", Integer.toHexString(i));
                return null;
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
