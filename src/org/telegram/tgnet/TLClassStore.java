package org.telegram.tgnet;

import android.util.SparseArray;
import org.telegram.tgnet.TLRPC;

/* JADX INFO: loaded from: classes.dex */
public class TLClassStore {
    static TLClassStore store;
    private final SparseArray<TLObjectFactory> classStore;

    /* JADX INFO: loaded from: classes6.dex */
    public interface TLObjectFactory {
        TLObject create();
    }

    public TLClassStore() {
        SparseArray<TLObjectFactory> sparseArray = new SparseArray<>();
        this.classStore = sparseArray;
        sparseArray.put(TLRPC.TL_error.constructor, new TLObjectFactory() { // from class: org.telegram.tgnet.TLClassStore$$ExternalSyntheticLambda0
            @Override // org.telegram.tgnet.TLClassStore.TLObjectFactory
            public final TLObject create() {
                return new TLRPC.TL_error();
            }
        });
        sparseArray.put(TLRPC.TL_decryptedMessageService.constructor, new TLObjectFactory() { // from class: org.telegram.tgnet.TLClassStore$$ExternalSyntheticLambda4
            @Override // org.telegram.tgnet.TLClassStore.TLObjectFactory
            public final TLObject create() {
                return new TLRPC.TL_decryptedMessageService();
            }
        });
        sparseArray.put(TLRPC.TL_decryptedMessage.constructor, new TLObjectFactory() { // from class: org.telegram.tgnet.TLClassStore$$ExternalSyntheticLambda5
            @Override // org.telegram.tgnet.TLClassStore.TLObjectFactory
            public final TLObject create() {
                return new TLRPC.TL_decryptedMessage();
            }
        });
        sparseArray.put(TLRPC.TL_decryptedMessageLayer.constructor, new TLObjectFactory() { // from class: org.telegram.tgnet.TLClassStore$$ExternalSyntheticLambda6
            @Override // org.telegram.tgnet.TLClassStore.TLObjectFactory
            public final TLObject create() {
                return new TLRPC.TL_decryptedMessageLayer();
            }
        });
        sparseArray.put(TLRPC.TL_decryptedMessage_layer17.constructor, new TLObjectFactory() { // from class: org.telegram.tgnet.TLClassStore$$ExternalSyntheticLambda5
            @Override // org.telegram.tgnet.TLClassStore.TLObjectFactory
            public final TLObject create() {
                return new TLRPC.TL_decryptedMessage();
            }
        });
        sparseArray.put(TLRPC.TL_decryptedMessage_layer45.constructor, new TLObjectFactory() { // from class: org.telegram.tgnet.TLClassStore$$ExternalSyntheticLambda7
            @Override // org.telegram.tgnet.TLClassStore.TLObjectFactory
            public final TLObject create() {
                return new TLRPC.TL_decryptedMessage_layer45();
            }
        });
        sparseArray.put(TLRPC.TL_decryptedMessageService_layer8.constructor, new TLObjectFactory() { // from class: org.telegram.tgnet.TLClassStore$$ExternalSyntheticLambda8
            @Override // org.telegram.tgnet.TLClassStore.TLObjectFactory
            public final TLObject create() {
                return new TLRPC.TL_decryptedMessageService_layer8();
            }
        });
        sparseArray.put(TLRPC.TL_decryptedMessage_layer8.constructor, new TLObjectFactory() { // from class: org.telegram.tgnet.TLClassStore$$ExternalSyntheticLambda9
            @Override // org.telegram.tgnet.TLClassStore.TLObjectFactory
            public final TLObject create() {
                return new TLRPC.TL_decryptedMessage_layer8();
            }
        });
        sparseArray.put(TLRPC.TL_message_secret.constructor, new TLObjectFactory() { // from class: org.telegram.tgnet.TLClassStore$$ExternalSyntheticLambda10
            @Override // org.telegram.tgnet.TLClassStore.TLObjectFactory
            public final TLObject create() {
                return new TLRPC.TL_message_secret();
            }
        });
        sparseArray.put(TLRPC.TL_message_secret_layer72.constructor, new TLObjectFactory() { // from class: org.telegram.tgnet.TLClassStore$$ExternalSyntheticLambda11
            @Override // org.telegram.tgnet.TLClassStore.TLObjectFactory
            public final TLObject create() {
                return new TLRPC.TL_message_secret_layer72();
            }
        });
        sparseArray.put(TLRPC.TL_message_secret_old.constructor, new TLObjectFactory() { // from class: org.telegram.tgnet.TLClassStore$$ExternalSyntheticLambda1
            @Override // org.telegram.tgnet.TLClassStore.TLObjectFactory
            public final TLObject create() {
                return new TLRPC.TL_message_secret_old();
            }
        });
        sparseArray.put(TLRPC.TL_messageEncryptedAction.constructor, new TLObjectFactory() { // from class: org.telegram.tgnet.TLClassStore$$ExternalSyntheticLambda2
            @Override // org.telegram.tgnet.TLClassStore.TLObjectFactory
            public final TLObject create() {
                return new TLRPC.TL_messageEncryptedAction();
            }
        });
        sparseArray.put(TLRPC.TL_null.constructor, new TLObjectFactory() { // from class: org.telegram.tgnet.TLClassStore$$ExternalSyntheticLambda3
            @Override // org.telegram.tgnet.TLClassStore.TLObjectFactory
            public final TLObject create() {
                return new TLRPC.TL_null();
            }
        });
    }

    public static TLClassStore Instance() {
        if (store == null) {
            store = new TLClassStore();
        }
        return store;
    }

    public TLObject TLdeserialize(NativeByteBuffer nativeByteBuffer, int i, boolean z) {
        TLObjectFactory tLObjectFactory = this.classStore.get(i);
        if (tLObjectFactory == null) {
            return null;
        }
        TLObject tLObjectCreate = tLObjectFactory.create();
        tLObjectCreate.readParams(nativeByteBuffer, z);
        return tLObjectCreate;
    }
}
