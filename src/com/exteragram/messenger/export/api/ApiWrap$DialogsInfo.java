package com.exteragram.messenger.export.api;

import java.util.ArrayList;

/* JADX INFO: loaded from: classes4.dex */
public class ApiWrap$DialogsInfo {
    public ArrayList chats = new ArrayList();
    public ArrayList left = new ArrayList();

    public ApiWrap$DialogInfo getItemAt(int i) {
        if (i < 0) {
            return null;
        }
        int size = this.chats.size();
        if (i < size) {
            return (ApiWrap$DialogInfo) this.chats.get(i);
        }
        int i2 = i - size;
        if (i2 < this.left.size()) {
            return (ApiWrap$DialogInfo) this.left.get(i2);
        }
        return null;
    }
}
