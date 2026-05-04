package com.exteragram.messenger.export.api;

import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.TLObject;

/* JADX INFO: loaded from: classes4.dex */
public class ExportRequests$InitTakeoutSession extends TLObject {
    public boolean contacts;
    public long file_max_size;
    public boolean files;
    public int flags;
    public boolean message_channels;
    public boolean message_chats;
    public boolean message_megagroups;
    public boolean message_users;

    @Override // org.telegram.tgnet.TLObject
    public TLObject deserializeResponse(InputSerializedData inputSerializedData, int i, boolean z) {
        return ExportRequests$Takeout.TLdeserialize(inputSerializedData, i, z);
    }

    @Override // org.telegram.tgnet.TLObject
    public void serializeToStream(OutputSerializedData outputSerializedData) {
        outputSerializedData.writeInt32(-1896617296);
        int i = this.contacts ? this.flags | 1 : this.flags & (-2);
        this.flags = i;
        int i2 = this.message_users ? i | 2 : i & (-3);
        this.flags = i2;
        int i3 = this.message_chats ? i2 | 4 : i2 & (-5);
        this.flags = i3;
        int i4 = this.message_megagroups ? i3 | 8 : i3 & (-9);
        this.flags = i4;
        int i5 = this.message_channels ? i4 | 16 : i4 & (-17);
        this.flags = i5;
        int i6 = this.files ? i5 | 32 : i5 & (-33);
        this.flags = i6;
        outputSerializedData.writeInt32(i6);
        if (this.files) {
            outputSerializedData.writeInt64(this.file_max_size);
        }
    }
}
