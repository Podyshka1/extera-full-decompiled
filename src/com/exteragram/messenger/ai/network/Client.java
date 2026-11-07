package com.exteragram.messenger.ai.network;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.text.TextUtils;
import com.android.dx.io.Opcodes;
import com.android.tools.r8.RecordTag;
import com.exteragram.messenger.ai.AiConfig;
import com.exteragram.messenger.ai.AiController;
import com.exteragram.messenger.ai.data.Message;
import com.exteragram.messenger.ai.data.Role;
import com.exteragram.messenger.ai.data.Service;
import com.exteragram.messenger.ai.network.backend.Backend;
import com.exteragram.messenger.ai.network.backend.BackendRequest;
import com.exteragram.messenger.ai.network.backend.BackendSink;
import com.exteragram.messenger.ai.network.backend.OnDeviceBackend;
import com.exteragram.messenger.ai.network.backend.RestBackend;
import com.google.android.gms.cast.MediaError;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Objects;
import java.util.UUID;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicBoolean;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.FileLog;

/* JADX INFO: loaded from: classes4.dex */
public class Client {
    private final ConcurrentHashMap<String, Runnable> activeCancellables;
    private final ConcurrentHashMap<String, ExecutorService> activeRequests;
    private final AtomicBoolean isGenerating;
    private final OnDeviceBackend onDeviceBackend;
    private final RestBackend restBackend;
    private final Role roleOverride;
    private final Service serviceOverride;

    private Client(Builder builder) {
        this.isGenerating = new AtomicBoolean(false);
        this.activeRequests = new ConcurrentHashMap<>();
        this.activeCancellables = new ConcurrentHashMap<>();
        this.restBackend = new RestBackend();
        this.onDeviceBackend = new OnDeviceBackend();
        this.serviceOverride = builder.serviceOverride;
        this.roleOverride = builder.roleOverride;
    }

    public static String getMimeType(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        String lowerCase = str.toLowerCase();
        if (lowerCase.endsWith(".png")) {
            return "image/png";
        }
        if (lowerCase.endsWith(".webp")) {
            return "image/webp";
        }
        if (lowerCase.endsWith(".heic") || lowerCase.endsWith(".heif")) {
            return "image/heic";
        }
        return "image/jpeg";
    }

    private static ImagePayload loadImagePayload(String str) {
        ByteArrayOutputStream byteArrayOutputStream;
        byte[] bArr;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        File file = new File(str);
        if (!file.exists() || !file.isFile() || file.length() == 0) {
            return null;
        }
        if (file.length() > 4194304) {
            return compressImage(str);
        }
        try {
            FileInputStream fileInputStream = new FileInputStream(file);
            try {
                byteArrayOutputStream = new ByteArrayOutputStream((int) Math.min(file.length(), 4194304L));
                try {
                    bArr = new byte[1024];
                } finally {
                }
            } finally {
            }
            while (true) {
                int i = fileInputStream.read(bArr);
                if (i != -1) {
                    byteArrayOutputStream.write(bArr, 0, i);
                } else {
                    ImagePayload imagePayload = new ImagePayload(byteArrayOutputStream.toByteArray(), getMimeType(str));
                    byteArrayOutputStream.close();
                    fileInputStream.close();
                    return imagePayload;
                }
            }
        } catch (IOException e) {
            FileLog.m991e("Error loading image: " + str, e);
            return null;
        }
    }

    private static ImagePayload compressImage(String str) {
        try {
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inJustDecodeBounds = true;
            BitmapFactory.decodeFile(str, options);
            if (options.outWidth > 0 && options.outHeight > 0) {
                BitmapFactory.Options options2 = new BitmapFactory.Options();
                options2.inSampleSize = 1;
                while (true) {
                    int i = options.outWidth;
                    int i2 = options2.inSampleSize;
                    if (i / i2 <= 2048 && options.outHeight / i2 <= 2048) {
                        break;
                    }
                    options2.inSampleSize = i2 * 2;
                }
                Bitmap bitmapDecodeFile = BitmapFactory.decodeFile(str, options2);
                if (bitmapDecodeFile == null) {
                    return null;
                }
                try {
                    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                    int i3 = 85;
                    do {
                        try {
                            byteArrayOutputStream.reset();
                            bitmapDecodeFile.compress(Bitmap.CompressFormat.JPEG, i3, byteArrayOutputStream);
                            i3 -= 10;
                            if (byteArrayOutputStream.size() <= 4194304) {
                                break;
                            }
                        } finally {
                        }
                    } while (i3 >= 55);
                    if (byteArrayOutputStream.size() <= 4194304) {
                        ImagePayload imagePayload = new ImagePayload(byteArrayOutputStream.toByteArray(), "image/jpeg");
                        byteArrayOutputStream.close();
                        return imagePayload;
                    }
                    byteArrayOutputStream.close();
                    return null;
                } finally {
                }
                bitmapDecodeFile.recycle();
            }
            return null;
        } catch (Exception e) {
            FileLog.m991e("Error compressing image: " + str, e);
            return null;
        }
    }

    private Service getSelectedService() {
        Service service = this.serviceOverride;
        return service != null ? service : AiController.getInstance().getSelected();
    }

    private Backend resolveBackend(Service service) {
        return (service == null || !service.isOnDevice()) ? this.restBackend : this.onDeviceBackend;
    }

    private Role getActiveRole() {
        Role role = this.roleOverride;
        if (role != null) {
            return role;
        }
        if (this.serviceOverride == null) {
            return AiController.getInstance().getSelectedRole();
        }
        return null;
    }

    public String getResponse(String str, GenerationCallback generationCallback) {
        return getResponse(str, false, false, null, generationCallback);
    }

    public String getResponse(final String str, final boolean z, final boolean z2, final String str2, final GenerationCallback generationCallback) {
        final String string = UUID.randomUUID().toString();
        ExecutorService executorServiceNewSingleThreadExecutor = Executors.newSingleThreadExecutor();
        this.activeRequests.put(string, executorServiceNewSingleThreadExecutor);
        executorServiceNewSingleThreadExecutor.execute(new Runnable() { // from class: com.exteragram.messenger.ai.network.Client$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$getResponse$0(str2, string, str, z, z2, generationCallback);
            }
        });
        return string;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$getResponse$0(String str, String str2, String str3, boolean z, boolean z2, GenerationCallback generationCallback) {
        ArrayList<Message> arrayList;
        this.isGenerating.set(true);
        try {
            Service selectedService = getSelectedService();
            Backend backendResolveBackend = resolveBackend(selectedService);
            ImagePayload imagePayloadLoadImagePayload = (backendResolveBackend.supportsImages() && AiController.canSendImage(str)) ? loadImagePayload(str) : null;
            if (this.activeRequests.containsKey(str2)) {
                Message message = new Message("user", str3, imagePayloadLoadImagePayload != null ? imagePayloadLoadImagePayload.data() : null, imagePayloadLoadImagePayload != null ? imagePayloadLoadImagePayload.mimeType() : null);
                if (z) {
                    arrayList = historyForRequest(AiConfig.getConversationHistory(), backendResolveBackend);
                } else {
                    arrayList = new ArrayList<>();
                }
                ArrayList<Message> arrayList2 = arrayList;
                if (this.activeRequests.containsKey(str2)) {
                    backendResolveBackend.execute(new BackendRequest(selectedService, getActiveRole(), arrayList2, message, z2, (AiConfig.getTemperature() / 20.0f) * backendResolveBackend.getMaxTemperature(), backendResolveBackend.getMaxOutputTokens()), new RequestSink(str2, message, z, generationCallback));
                }
            }
        } catch (Exception e) {
            if (this.activeRequests.containsKey(str2)) {
                FileLog.m991e("AI Error: ", e);
                notifyErrorAndFinish(str2, generationCallback, MediaError.DetailedErrorCode.SEGMENT_UNKNOWN, e.getMessage() != null ? e.getMessage() : "Unknown error");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendStreamChunk(final String str, final String str2, final GenerationCallback generationCallback) {
        if (TextUtils.isEmpty(str2)) {
            return;
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.ai.network.Client$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$sendStreamChunk$1(str, generationCallback, str2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$sendStreamChunk$1(String str, GenerationCallback generationCallback, String str2) {
        if (!this.activeRequests.containsKey(str) || generationCallback == null) {
            return;
        }
        generationCallback.onChunk(str2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyThinking(final String str, final GenerationCallback generationCallback) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.ai.network.Client$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$notifyThinking$2(str, generationCallback);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$notifyThinking$2(String str, GenerationCallback generationCallback) {
        if (!this.activeRequests.containsKey(str) || generationCallback == null) {
            return;
        }
        generationCallback.onThinking();
    }

    private ArrayList<Message> historyForRequest(ArrayList<Message> arrayList, Backend backend) {
        Message message;
        int length;
        ArrayList<Message> arrayList2 = new ArrayList<>();
        int historyCharsLimit = backend.getHistoryCharsLimit();
        int historyMessagesLimit = backend.getHistoryMessagesLimit();
        int i = 0;
        for (int size = arrayList.size() - 1; size > 0 && arrayList2.size() < historyMessagesLimit; size--) {
            Message message2 = arrayList.get(size);
            if (message2 != null && "assistant".equals(message2.role()) && !TextUtils.isEmpty(message2.content()) && (message = arrayList.get(size - 1)) != null && !"assistant".equals(message.role()) && !TextUtils.isEmpty(message.content()) && (length = message.content().length() + message2.content().length() + i) <= historyCharsLimit && arrayList2.size() + 2 <= historyMessagesLimit) {
                arrayList2.add(0, copyTextMessage(message));
                arrayList2.add(1, copyTextMessage(message2));
                i = length;
            }
        }
        return arrayList2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void saveTurn(Message message, String str) {
        ArrayList<Message> conversationHistory = AiConfig.getConversationHistory();
        conversationHistory.add(copyTextMessage(message));
        conversationHistory.add(new Message("assistant", str));
        int size = conversationHistory.size();
        int length = 0;
        int i = 0;
        while (i < size) {
            Message message2 = conversationHistory.get(i);
            i++;
            Message message3 = message2;
            length += message3.content() == null ? 0 : message3.content().length();
        }
        while (conversationHistory.size() > 2 && (conversationHistory.size() > 64 || length > 64000)) {
            Message messageRemove = conversationHistory.remove(0);
            length -= messageRemove.content() == null ? 0 : messageRemove.content().length();
        }
        if (conversationHistory.size() > 2 && "assistant".equals(conversationHistory.get(0).role())) {
            conversationHistory.remove(0);
        }
        AiConfig.saveConversationHistory(conversationHistory);
    }

    private Message copyTextMessage(Message message) {
        return new Message(message.role(), message.content());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyResponseAndFinish(final String str, final GenerationCallback generationCallback, final String str2) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.ai.network.Client$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$notifyResponseAndFinish$3(str, generationCallback, str2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$notifyResponseAndFinish$3(String str, GenerationCallback generationCallback, String str2) {
        try {
            if (this.activeRequests.containsKey(str) && generationCallback != null) {
                generationCallback.onResponse(str2);
            }
        } finally {
            finishRequest(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyErrorAndFinish(final String str, final GenerationCallback generationCallback, final int i, final String str2) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.ai.network.Client$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$notifyErrorAndFinish$4(str, generationCallback, i, str2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$notifyErrorAndFinish$4(String str, GenerationCallback generationCallback, int i, String str2) {
        try {
            if (this.activeRequests.containsKey(str) && generationCallback != null) {
                generationCallback.onError(i, str2);
            }
        } finally {
            finishRequest(str);
        }
    }

    public boolean isGenerating() {
        return this.isGenerating.get();
    }

    private void finishRequest(String str) {
        this.activeCancellables.remove(str);
        ExecutorService executorServiceRemove = this.activeRequests.remove(str);
        if (executorServiceRemove != null) {
            executorServiceRemove.shutdown();
        }
        if (this.activeRequests.isEmpty()) {
            this.isGenerating.set(false);
        }
    }

    public void stopRequest(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        Runnable runnableRemove = this.activeCancellables.remove(str);
        if (runnableRemove != null) {
            try {
                runnableRemove.run();
            } catch (Exception e) {
                FileLog.m992e(e);
            }
        }
        ExecutorService executorServiceRemove = this.activeRequests.remove(str);
        if (executorServiceRemove != null) {
            executorServiceRemove.shutdownNow();
        }
        if (this.activeRequests.isEmpty()) {
            this.isGenerating.set(false);
        }
    }

    public final class RequestSink implements BackendSink {
        private final GenerationCallback callback;
        private final Message currentMessage;
        private final String requestId;
        private final boolean saveHistory;

        public RequestSink(String str, Message message, boolean z, GenerationCallback generationCallback) {
            this.requestId = str;
            this.currentMessage = message;
            this.saveHistory = z;
            this.callback = generationCallback;
        }

        @Override // com.exteragram.messenger.ai.network.backend.BackendSink
        public boolean isActive() {
            return Client.this.activeRequests.containsKey(this.requestId);
        }

        @Override // com.exteragram.messenger.ai.network.backend.BackendSink
        public void onCancellable(Runnable runnable) {
            if (runnable != null) {
                Client.this.activeCancellables.put(this.requestId, runnable);
            }
        }

        @Override // com.exteragram.messenger.ai.network.backend.BackendSink
        public void onThinking() {
            Client.this.notifyThinking(this.requestId, this.callback);
        }

        @Override // com.exteragram.messenger.ai.network.backend.BackendSink
        public void onChunk(String str) {
            Client.this.sendStreamChunk(this.requestId, str, this.callback);
        }

        @Override // com.exteragram.messenger.ai.network.backend.BackendSink
        public void onComplete(String str) {
            if (isActive()) {
                if (TextUtils.isEmpty(str)) {
                    onError(Opcodes.SUB_DOUBLE_2ADDR, "Response body is empty");
                    return;
                }
                if (this.saveHistory) {
                    Client.this.saveTurn(this.currentMessage, str);
                }
                Client.this.notifyResponseAndFinish(this.requestId, this.callback, str);
            }
        }

        @Override // com.exteragram.messenger.ai.network.backend.BackendSink
        public void onError(int i, String str) {
            Client.this.notifyErrorAndFinish(this.requestId, this.callback, i, str);
        }
    }

    public static class Builder {
        private Role roleOverride;
        private Service serviceOverride;

        public Builder serviceOverride(Service service) {
            this.serviceOverride = service;
            return this;
        }

        public Builder roleOverride(Role role) {
            this.roleOverride = role;
            return this;
        }

        public Client build() {
            return new Client(this);
        }
    }

    public static final class ImagePayload extends RecordTag {
        private final byte[] data;
        private final String mimeType;

        private /* synthetic */ boolean $record$equals(Object obj) {
            if (!(obj instanceof ImagePayload)) {
                return false;
            }
            ImagePayload imagePayload = (ImagePayload) obj;
            return Objects.equals(this.data, imagePayload.data) && Objects.equals(this.mimeType, imagePayload.mimeType);
        }

        private /* synthetic */ Object[] $record$getFieldsAsObjects() {
            return new Object[]{this.data, this.mimeType};
        }

        private ImagePayload(byte[] bArr, String str) {
            this.data = bArr;
            this.mimeType = str;
        }

        public byte[] data() {
            return this.data;
        }

        public final boolean equals(Object obj) {
            return $record$equals(obj);
        }

        public final int hashCode() {
            return Client$ImagePayload$$ExternalSyntheticRecord0.m234m(this.data, this.mimeType);
        }

        public String mimeType() {
            return this.mimeType;
        }

        public final String toString() {
            return Client$ImagePayload$$ExternalSyntheticRecord1.m235m($record$getFieldsAsObjects(), ImagePayload.class, "data;mimeType");
        }
    }
}
