package com.exteragram.messenger.utils.chats;

import java.util.ArrayList;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.Utilities;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.ui.Components.Reactions.ReactionsLayoutInBubble;

/* JADX INFO: loaded from: classes4.dex */
public final class ChatSearchLocalFilter {
    private boolean active;
    private final int currentAccount;
    private boolean decided;
    private String key;
    private boolean localSender;
    private volatile int scanRequestId;
    private long senderId;
    private volatile int token;
    private TLRPC.MessagesFilter typeFilter;
    private final int[] rawOffsetId = new int[2];
    private final boolean[] rawEndReached = new boolean[2];
    private final int[] discarded = new int[2];

    public static final class Scan {
        final RequestDelegate delegate;
        int discarded;
        boolean endReached;
        final int flags;
        final boolean localSender;
        int offsetId;
        int requests;
        final long senderId;
        final int sourceIndex;
        final int token;
        final TLRPC.MessagesFilter typeFilter;
        final ArrayList<TLRPC.Message> messages = new ArrayList<>();
        final ArrayList<TLRPC.User> users = new ArrayList<>();
        final ArrayList<TLRPC.Chat> chats = new ArrayList<>();

        public Scan(int i, int i2, boolean z, long j, TLRPC.MessagesFilter messagesFilter, RequestDelegate requestDelegate, int i3) {
            this.token = i;
            this.sourceIndex = i2;
            this.localSender = z;
            this.senderId = j;
            this.typeFilter = messagesFilter;
            this.delegate = requestDelegate;
            this.flags = i3;
        }
    }

    public ChatSearchLocalFilter(int i) {
        this.currentAccount = i;
    }

    public boolean prepare(String str, long j, long j2, TLRPC.User user, TLRPC.Chat chat, ReactionsLayoutInBubble.VisibleReaction visibleReaction, TLRPC.MessagesFilter messagesFilter, final Runnable runnable) {
        long j3;
        boolean z;
        ReactionsLayoutInBubble.VisibleReaction visibleReaction2;
        String string;
        int[] iArr = this.rawOffsetId;
        iArr[1] = 0;
        iArr[0] = 0;
        boolean[] zArr = this.rawEndReached;
        zArr[1] = false;
        zArr[0] = false;
        int[] iArr2 = this.discarded;
        iArr2[1] = 0;
        iArr2[0] = 0;
        if (user != null) {
            j3 = user.id;
        } else {
            j3 = chat != null ? -chat.id : 0L;
        }
        if (j3 == 0 || messagesFilter == null) {
            reset();
            return false;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(j);
        sb.append("_");
        sb.append(j2);
        sb.append("_");
        sb.append(j3);
        sb.append("_");
        sb.append(messagesFilter.getClass().getName());
        sb.append("_");
        sb.append(str);
        sb.append("_");
        if (visibleReaction != null) {
            StringBuilder sb2 = new StringBuilder();
            z = false;
            visibleReaction2 = visibleReaction;
            sb2.append(visibleReaction2.emojicon);
            sb2.append(visibleReaction2.documentId);
            string = sb2.toString();
        } else {
            z = false;
            visibleReaction2 = visibleReaction;
            string = _UrlKt.FRAGMENT_ENCODE_SET;
        }
        sb.append(string);
        String string2 = sb.toString();
        if (this.decided && string2.equals(this.key)) {
            this.active = true;
            return z;
        }
        TLRPC.InputPeer inputPeer = MessagesController.getInstance(this.currentAccount).getInputPeer(j);
        TLRPC.InputPeer inputPeer2 = user != null ? MessagesController.getInputPeer(user) : MessagesController.getInputPeer(chat);
        if (inputPeer == null || inputPeer2 == null) {
            reset();
            return false;
        }
        this.key = string2;
        boolean z2 = z;
        this.decided = z2;
        this.active = z2;
        this.senderId = j3;
        this.typeFilter = messagesFilter;
        final int i = this.token + 1;
        this.token = i;
        TLRPC.TL_messages_search tL_messages_searchCreateCountRequest = createCountRequest(inputPeer, str, j, j2, visibleReaction2);
        tL_messages_searchCreateCountRequest.filter = messagesFilter;
        TLRPC.TL_messages_search tL_messages_searchCreateCountRequest2 = createCountRequest(inputPeer, str, j, j2, visibleReaction);
        tL_messages_searchCreateCountRequest2.from_id = inputPeer2;
        tL_messages_searchCreateCountRequest2.filter = new TLRPC.TL_inputMessagesFilterEmpty();
        final int[] iArr3 = {-1, -1};
        ConnectionsManager connectionsManager = ConnectionsManager.getInstance(this.currentAccount);
        connectionsManager.sendRequest(tL_messages_searchCreateCountRequest, new RequestDelegate() { // from class: com.exteragram.messenger.utils.chats.ChatSearchLocalFilter$$ExternalSyntheticLambda0
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                this.f$0.lambda$prepare$1(i, iArr3, runnable, tLObject, tL_error);
            }
        });
        connectionsManager.sendRequest(tL_messages_searchCreateCountRequest2, new RequestDelegate() { // from class: com.exteragram.messenger.utils.chats.ChatSearchLocalFilter$$ExternalSyntheticLambda1
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                this.f$0.lambda$prepare$3(i, iArr3, runnable, tLObject, tL_error);
            }
        });
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$prepare$0(int i, TLObject tLObject, int[] iArr, Runnable runnable) {
        onCount(i, 0, tLObject, iArr, runnable);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$prepare$1(final int i, final int[] iArr, final Runnable runnable, final TLObject tLObject, TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.utils.chats.ChatSearchLocalFilter$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$prepare$0(i, tLObject, iArr, runnable);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$prepare$2(int i, TLObject tLObject, int[] iArr, Runnable runnable) {
        onCount(i, 1, tLObject, iArr, runnable);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$prepare$3(final int i, final int[] iArr, final Runnable runnable, final TLObject tLObject, TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.utils.chats.ChatSearchLocalFilter$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$prepare$2(i, tLObject, iArr, runnable);
            }
        });
    }

    public void applyTo(TLRPC.TL_messages_search tL_messages_search, boolean z) {
        if (this.active) {
            if (this.localSender) {
                tL_messages_search.from_id = null;
                tL_messages_search.flags &= -2;
            } else {
                tL_messages_search.filter = new TLRPC.TL_inputMessagesFilterEmpty();
            }
            if (z) {
                tL_messages_search.limit = 100;
            }
        }
    }

    public int sendRequest(int i, TLRPC.TL_messages_search tL_messages_search, RequestDelegate requestDelegate, int i2) {
        ConnectionsManager connectionsManager = ConnectionsManager.getInstance(this.currentAccount);
        if (!this.active) {
            return connectionsManager.sendRequest(tL_messages_search, requestDelegate, i2);
        }
        Scan scan = new Scan(this.token, i, this.localSender, this.senderId, this.typeFilter, requestDelegate, i2);
        scan.offsetId = tL_messages_search.offset_id;
        return sendPage(scan, tL_messages_search);
    }

    public boolean isActive() {
        return this.active;
    }

    public boolean isEndReached(int i, boolean z) {
        return this.active ? this.rawEndReached[i] : z;
    }

    public int getOffsetId(int i, int i2) {
        return this.active ? this.rawOffsetId[i] : i2;
    }

    public void cancel() {
        this.token++;
        if (this.scanRequestId != 0) {
            ConnectionsManager.getInstance(this.currentAccount).cancelRequest(this.scanRequestId, true);
            this.scanRequestId = 0;
        }
    }

    public void reset() {
        cancel();
        this.key = null;
        this.decided = false;
        this.active = false;
    }

    private TLRPC.TL_messages_search createCountRequest(TLRPC.InputPeer inputPeer, String str, long j, long j2, ReactionsLayoutInBubble.VisibleReaction visibleReaction) {
        TLRPC.TL_messages_search tL_messages_search = new TLRPC.TL_messages_search();
        tL_messages_search.peer = inputPeer;
        tL_messages_search.f1032q = str;
        tL_messages_search.limit = 1;
        if (j2 != 0) {
            MessagesController messagesController = MessagesController.getInstance(this.currentAccount);
            if (j == UserConfig.getInstance(this.currentAccount).getClientUserId() || messagesController.isMonoForum(j)) {
                tL_messages_search.saved_peer_id = messagesController.getInputPeer(j2);
                tL_messages_search.flags |= 4;
            } else {
                tL_messages_search.top_msg_id = (int) j2;
                tL_messages_search.flags |= 2;
            }
        }
        if (visibleReaction != null) {
            tL_messages_search.saved_reaction.add(visibleReaction.toTLReaction());
            tL_messages_search.flags |= 8;
        }
        return tL_messages_search;
    }

    private void onCount(int i, int i2, TLObject tLObject, int[] iArr, Runnable runnable) {
        int i3;
        if (i != this.token) {
            return;
        }
        iArr[i2] = tLObject instanceof TLRPC.messages_Messages ? getCount((TLRPC.messages_Messages) tLObject) : Integer.MAX_VALUE;
        int i4 = iArr[0];
        if (i4 < 0 || (i3 = iArr[1]) < 0) {
            return;
        }
        this.localSender = i4 <= i3;
        this.decided = true;
        this.active = true;
        runnable.run();
    }

    private int sendPage(final Scan scan, final TLRPC.TL_messages_search tL_messages_search) {
        scan.requests++;
        int iSendRequest = ConnectionsManager.getInstance(this.currentAccount).sendRequest(tL_messages_search, new RequestDelegate() { // from class: com.exteragram.messenger.utils.chats.ChatSearchLocalFilter$$ExternalSyntheticLambda2
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                this.f$0.lambda$sendPage$4(scan, tL_messages_search, tLObject, tL_error);
            }
        }, scan.flags);
        this.scanRequestId = iSendRequest;
        return iSendRequest;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: onPage, reason: merged with bridge method [inline-methods] */
    public void lambda$sendPage$4(final Scan scan, final TLRPC.TL_messages_search tL_messages_search, TLObject tLObject, TLRPC.TL_error tL_error) {
        String str;
        if (scan.token != this.token) {
            return;
        }
        if (!(tLObject instanceof TLRPC.messages_Messages)) {
            int i = (tL_error == null || (str = tL_error.text) == null || !str.startsWith("FLOOD_WAIT_")) ? 0 : Utilities.parseInt((CharSequence) tL_error.text);
            if (i > 0 && i <= 60) {
                Utilities.stageQueue.postRunnable(new Runnable() { // from class: com.exteragram.messenger.utils.chats.ChatSearchLocalFilter$$ExternalSyntheticLambda5
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$onPage$5(scan, tL_messages_search);
                    }
                }, ((long) i) * 1000);
                return;
            } else {
                this.scanRequestId = 0;
                scan.delegate.run(tLObject, tL_error);
                return;
            }
        }
        TLRPC.messages_Messages messages_messages = (TLRPC.messages_Messages) tLObject;
        int iMin = Math.min(messages_messages.messages.size(), tL_messages_search.limit - 1);
        int i2 = 0;
        while (i2 < iMin && scan.messages.size() < tL_messages_search.limit - 1) {
            int i3 = i2 + 1;
            TLRPC.Message message = messages_messages.messages.get(i2);
            if (!scan.localSender ? matchesType(message, scan.typeFilter) : MessageObject.getPeerId(message.from_id) == scan.senderId) {
                scan.messages.add(message);
            } else {
                scan.discarded++;
            }
            i2 = i3;
        }
        scan.users.addAll(messages_messages.users);
        scan.chats.addAll(messages_messages.chats);
        if (i2 > 0) {
            scan.offsetId = messages_messages.messages.get(i2 - 1).id;
        }
        scan.endReached = i2 == iMin && messages_messages.messages.size() < tL_messages_search.limit;
        int size = scan.messages.size();
        if (!scan.endReached && (size == 0 || (size < 10 && scan.requests < 5))) {
            final TLRPC.TL_messages_search tL_messages_searchCopy = copy(tL_messages_search);
            tL_messages_searchCopy.offset_id = scan.offsetId;
            Utilities.stageQueue.postRunnable(new Runnable() { // from class: com.exteragram.messenger.utils.chats.ChatSearchLocalFilter$$ExternalSyntheticLambda6
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onPage$6(scan, tL_messages_searchCopy);
                }
            }, 300L);
            return;
        }
        this.scanRequestId = 0;
        int[] iArr = this.rawOffsetId;
        int i4 = scan.sourceIndex;
        iArr[i4] = scan.offsetId;
        this.rawEndReached[i4] = scan.endReached;
        int[] iArr2 = this.discarded;
        iArr2[i4] = iArr2[i4] + scan.discarded;
        TLRPC.TL_messages_messagesSlice tL_messages_messagesSlice = new TLRPC.TL_messages_messagesSlice();
        tL_messages_messagesSlice.messages = scan.messages;
        tL_messages_messagesSlice.users = scan.users;
        tL_messages_messagesSlice.chats = scan.chats;
        tL_messages_messagesSlice.count = Math.max(getCount(messages_messages) - this.discarded[scan.sourceIndex], size);
        scan.delegate.run(tL_messages_messagesSlice, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onPage$5(Scan scan, TLRPC.TL_messages_search tL_messages_search) {
        if (scan.token == this.token) {
            sendPage(scan, tL_messages_search);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onPage$6(Scan scan, TLRPC.TL_messages_search tL_messages_search) {
        if (scan.token == this.token) {
            sendPage(scan, tL_messages_search);
        }
    }

    private static int getCount(TLRPC.messages_Messages messages_messages) {
        return ((messages_messages instanceof TLRPC.TL_messages_messagesSlice) || (messages_messages instanceof TLRPC.TL_messages_channelMessages)) ? messages_messages.count : messages_messages.messages.size();
    }

    private static TLRPC.TL_messages_search copy(TLRPC.TL_messages_search tL_messages_search) {
        TLRPC.TL_messages_search tL_messages_search2 = new TLRPC.TL_messages_search();
        tL_messages_search2.flags = tL_messages_search.flags;
        tL_messages_search2.peer = tL_messages_search.peer;
        tL_messages_search2.f1032q = tL_messages_search.f1032q;
        tL_messages_search2.from_id = tL_messages_search.from_id;
        tL_messages_search2.saved_peer_id = tL_messages_search.saved_peer_id;
        tL_messages_search2.saved_reaction = tL_messages_search.saved_reaction;
        tL_messages_search2.top_msg_id = tL_messages_search.top_msg_id;
        tL_messages_search2.filter = tL_messages_search.filter;
        tL_messages_search2.min_date = tL_messages_search.min_date;
        tL_messages_search2.max_date = tL_messages_search.max_date;
        tL_messages_search2.offset_id = tL_messages_search.offset_id;
        tL_messages_search2.add_offset = tL_messages_search.add_offset;
        tL_messages_search2.limit = tL_messages_search.limit;
        tL_messages_search2.max_id = tL_messages_search.max_id;
        tL_messages_search2.min_id = tL_messages_search.min_id;
        tL_messages_search2.hash = tL_messages_search.hash;
        return tL_messages_search2;
    }

    private static boolean matchesType(TLRPC.Message message, TLRPC.MessagesFilter messagesFilter) {
        TLRPC.MessageMedia media = MessageObject.getMedia(message);
        TLRPC.Document document = media != null ? media.document : null;
        if (messagesFilter instanceof TLRPC.TL_inputMessagesFilterPhotos) {
            return media instanceof TLRPC.TL_messageMediaPhoto;
        }
        if (messagesFilter instanceof TLRPC.TL_inputMessagesFilterVideo) {
            return MessageObject.isVideoDocument(document);
        }
        if (messagesFilter instanceof TLRPC.TL_inputMessagesFilterDocument) {
            return (document == null || MessageObject.isVideoDocument(document) || MessageObject.isRoundVideoDocument(document) || MessageObject.isVoiceDocument(document) || MessageObject.isMusicDocument(document) || MessageObject.isGifDocument(document) || MessageObject.isStickerDocument(document) || MessageObject.isAnimatedStickerDocument(document, true)) ? false : true;
        }
        if (messagesFilter instanceof TLRPC.TL_inputMessagesFilterUrl) {
            return (media instanceof TLRPC.TL_messageMediaWebPage) || hasUrlEntity(message);
        }
        if (messagesFilter instanceof TLRPC.TL_inputMessagesFilterMusic) {
            return MessageObject.isMusicDocument(document);
        }
        if (messagesFilter instanceof TLRPC.TL_inputMessagesFilterVoice) {
            return MessageObject.isVoiceDocument(document);
        }
        if (messagesFilter instanceof TLRPC.TL_inputMessagesFilterRoundVideo) {
            return MessageObject.isRoundVideoDocument(document);
        }
        if (messagesFilter instanceof TLRPC.TL_inputMessagesFilterGif) {
            return MessageObject.isGifDocument(document);
        }
        if (messagesFilter instanceof TLRPC.TL_inputMessagesFilterPoll) {
            return media instanceof TLRPC.TL_messageMediaPoll;
        }
        if (messagesFilter instanceof TLRPC.TL_inputMessagesFilterGeo) {
            return MessageObject.isLocationMessage(message);
        }
        if (messagesFilter instanceof TLRPC.TL_inputMessagesFilterPinned) {
            return message.pinned;
        }
        if (messagesFilter instanceof TLRPC.TL_inputMessagesFilterMyMentions) {
            return message.mentioned;
        }
        return true;
    }

    private static boolean hasUrlEntity(TLRPC.Message message) {
        if (message.entities == null) {
            return false;
        }
        for (int i = 0; i < message.entities.size(); i++) {
            TLRPC.MessageEntity messageEntity = message.entities.get(i);
            if ((messageEntity instanceof TLRPC.TL_messageEntityUrl) || (messageEntity instanceof TLRPC.TL_messageEntityTextUrl)) {
                return true;
            }
        }
        return false;
    }
}
