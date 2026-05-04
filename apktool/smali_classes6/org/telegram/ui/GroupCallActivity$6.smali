.class Lorg/telegram/ui/GroupCallActivity$6;
.super Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/GroupCallActivity;-><init>(Landroid/app/Activity;Lorg/telegram/messenger/AccountInstance;Lorg/telegram/messenger/ChatObject$Call;Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$InputPeer;ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/GroupCallActivity;

.field final synthetic val$context:Landroid/app/Activity;


# direct methods
.method public static synthetic $r8$lambda$5J0jy07Czqe7s9BkAqr7s9jXXgA(Lorg/telegram/ui/Components/EditTextBoldCursor;Landroid/content/DialogInterface;)V
    .locals 0

    .line 2247
    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$AJ3sP9r4YypphYq6I3ge1nV8Td0(Lorg/telegram/ui/Components/EditTextBoldCursor;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 2178
    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$D1ltd_eU8okhssrfndqIA5Jm9ak(Lorg/telegram/ui/ActionBar/AlertDialog$Builder;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 2200
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 2201
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p0

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->getButton(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->callOnClick()Z

    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$EdLiFeD1nBNemn7PAPXWSlYqr3U(Lorg/telegram/ui/GroupCallActivity$6;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/GroupCallActivity$6;->lambda$onItemClick$1(Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$LuOevZIN53aluwxUtdC3kkr1uZE(Lorg/telegram/ui/GroupCallActivity$6;Lorg/telegram/ui/Components/EditTextBoldCursor;Lorg/telegram/ui/ActionBar/AlertDialog$Builder;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/GroupCallActivity$6;->lambda$onItemClick$5(Lorg/telegram/ui/Components/EditTextBoldCursor;Lorg/telegram/ui/ActionBar/AlertDialog$Builder;Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$OaLFMPzyOZNBsAE0XwP8XBrQCiI(Lorg/telegram/ui/GroupCallActivity$6;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/GroupCallActivity$6;->lambda$onItemClick$0(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$U6KGXXoKDOZlfDQiS4TP9MF0T0o(Lorg/telegram/ui/GroupCallActivity$6;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/GroupCallActivity$6;->lambda$onItemClick$10(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$UEQm4r2e1jr-obNKwh773u-nbzE(Lorg/telegram/ui/GroupCallActivity$6;Lorg/telegram/tgnet/TLRPC$InputPeer;ZZZ)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/GroupCallActivity$6;->lambda$onItemClick$9(Lorg/telegram/tgnet/TLRPC$InputPeer;ZZZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$cXcws3989j4bDHUwA6lGubhzTg8(Lorg/telegram/ui/GroupCallActivity$6;Ljava/util/ArrayList;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/GroupCallActivity$6;->lambda$onItemClick$11(Ljava/util/ArrayList;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$kUmVbj8SqExdqrSbn90RlI0T70Y(Lorg/telegram/ui/GroupCallActivity$6;Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/ui/Components/EditTextBoldCursor;Landroid/content/DialogInterface;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/GroupCallActivity$6;->lambda$onItemClick$6(Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/ui/Components/EditTextBoldCursor;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$t-6jC1WSfURy5tDSUywPpDZ0crs(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    return-void
.end method

.method public static synthetic $r8$lambda$xKNK_0f-CEndrrb9AIYNeY_LXhM(Lorg/telegram/ui/GroupCallActivity$6;ZLorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/GroupCallActivity$6;->lambda$onItemClick$2(ZLorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/GroupCallActivity;Landroid/app/Activity;)V
    .locals 0

    .line 1988
    iput-object p1, p0, Lorg/telegram/ui/GroupCallActivity$6;->this$0:Lorg/telegram/ui/GroupCallActivity;

    iput-object p2, p0, Lorg/telegram/ui/GroupCallActivity$6;->val$context:Landroid/app/Activity;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;-><init>()V

    return-void
.end method

.method private synthetic lambda$onItemClick$0(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    .line 2028
    instance-of p2, p1, Lorg/telegram/tgnet/TLRPC$TL_updates;

    if-eqz p2, :cond_0

    .line 2029
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_updates;

    .line 2030
    iget-object p2, p0, Lorg/telegram/ui/GroupCallActivity$6;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {p2}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$fgetaccountInstance(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/messenger/AccountInstance;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/AccountInstance;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lorg/telegram/messenger/MessagesController;->processUpdates(Lorg/telegram/tgnet/TLRPC$Updates;Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onItemClick$1(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 5

    .line 2018
    iget-object p1, p0, Lorg/telegram/ui/GroupCallActivity$6;->this$0:Lorg/telegram/ui/GroupCallActivity;

    iget-object p1, p1, Lorg/telegram/ui/GroupCallActivity;->call:Lorg/telegram/messenger/ChatObject$Call;

    invoke-virtual {p1}, Lorg/telegram/messenger/ChatObject$Call;->isScheduled()Z

    move-result p1

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 2019
    iget-object p1, p0, Lorg/telegram/ui/GroupCallActivity$6;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {p1}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$fgetaccountInstance(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/messenger/AccountInstance;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/AccountInstance;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object v1, p0, Lorg/telegram/ui/GroupCallActivity$6;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/GroupCallActivity;->getChatId()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lorg/telegram/messenger/MessagesController;->getChatFull(J)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2021
    iget v1, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    const v2, -0x200001

    and-int/2addr v1, v2

    iput v1, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    const/4 v1, 0x0

    .line 2022
    iput-object v1, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->call:Lorg/telegram/tgnet/TLRPC$InputGroupCall;

    .line 2023
    iget-object p1, p0, Lorg/telegram/ui/GroupCallActivity$6;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {p1}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$fgetaccountInstance(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/messenger/AccountInstance;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/AccountInstance;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v1, Lorg/telegram/messenger/NotificationCenter;->groupCallUpdated:I

    iget-object v2, p0, Lorg/telegram/ui/GroupCallActivity$6;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/GroupCallActivity;->getChatId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/GroupCallActivity$6;->this$0:Lorg/telegram/ui/GroupCallActivity;

    iget-object v3, v3, Lorg/telegram/ui/GroupCallActivity;->call:Lorg/telegram/messenger/ChatObject$Call;

    iget-object v3, v3, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget-wide v3, v3, Lorg/telegram/tgnet/TLRPC$GroupCall;->id:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v0

    aput-object v3, v4, p2

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v2, 0x2

    aput-object p2, v4, v2

    invoke-virtual {p1, v1, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 2025
    :cond_0
    new-instance p1, Lorg/telegram/tgnet/tl/TL_phone$discardGroupCall;

    invoke-direct {p1}, Lorg/telegram/tgnet/tl/TL_phone$discardGroupCall;-><init>()V

    .line 2026
    iget-object p2, p0, Lorg/telegram/ui/GroupCallActivity$6;->this$0:Lorg/telegram/ui/GroupCallActivity;

    iget-object p2, p2, Lorg/telegram/ui/GroupCallActivity;->call:Lorg/telegram/messenger/ChatObject$Call;

    invoke-virtual {p2}, Lorg/telegram/messenger/ChatObject$Call;->getInputGroupCall()Lorg/telegram/tgnet/TLRPC$InputGroupCall;

    move-result-object p2

    iput-object p2, p1, Lorg/telegram/tgnet/tl/TL_phone$discardGroupCall;->call:Lorg/telegram/tgnet/TLRPC$InputGroupCall;

    .line 2027
    iget-object p2, p0, Lorg/telegram/ui/GroupCallActivity$6;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {p2}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$fgetaccountInstance(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/messenger/AccountInstance;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/AccountInstance;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p2

    new-instance v1, Lorg/telegram/ui/GroupCallActivity$6$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0}, Lorg/telegram/ui/GroupCallActivity$6$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/GroupCallActivity$6;)V

    invoke-virtual {p2, p1, v1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_0

    .line 2033
    :cond_1
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 2034
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/voip/VoIPService;->hangUp(I)V

    .line 2036
    :cond_2
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/GroupCallActivity$6;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/GroupCallActivity;->dismiss()V

    .line 2037
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->didStartedCall:I

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, p2, v0}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$onItemClick$10(I)V
    .locals 3

    .line 2353
    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$6;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/GroupCallActivity;->setAudioOutputValue(I)V

    .line 2355
    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$6;->this$0:Lorg/telegram/ui/GroupCallActivity;

    iget-object v0, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->topBulletinContainer:Landroid/widget/FrameLayout;

    new-instance v1, Lorg/telegram/ui/DarkBlueThemeResourcesProvider;

    invoke-direct {v1}, Lorg/telegram/ui/DarkBlueThemeResourcesProvider;-><init>()V

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/GroupCallActivity$6;->this$0:Lorg/telegram/ui/GroupCallActivity;

    .line 2356
    invoke-virtual {v1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/GroupCallActivity$6;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-virtual {v2, p1}, Lorg/telegram/ui/GroupCallActivity;->getAudioOutputToastIcon(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/GroupCallActivity$6;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-virtual {v2, p1}, Lorg/telegram/ui/GroupCallActivity;->getAudioOutputToastText(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$6;->this$0:Lorg/telegram/ui/GroupCallActivity;

    .line 2357
    invoke-static {v0}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$misBulletinTop(Lorg/telegram/ui/GroupCallActivity;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/Bulletin;->show(Z)Lorg/telegram/ui/Components/Bulletin;

    return-void
.end method

.method private synthetic lambda$onItemClick$11(Ljava/util/ArrayList;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 2345
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    .line 2348
    :cond_0
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 2349
    iget-object p3, p0, Lorg/telegram/ui/GroupCallActivity$6;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {p3, p1}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$fputcacheAudioOutputValue(Lorg/telegram/ui/GroupCallActivity;Ljava/lang/Integer;)V

    .line 2350
    iget-object p1, p0, Lorg/telegram/ui/GroupCallActivity$6;->this$0:Lorg/telegram/ui/GroupCallActivity;

    const/4 p3, 0x1

    invoke-static {p1, p3, p3}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$mupdateState(Lorg/telegram/ui/GroupCallActivity;ZZ)V

    .line 2351
    iget-object p1, p0, Lorg/telegram/ui/GroupCallActivity$6;->this$0:Lorg/telegram/ui/GroupCallActivity;

    const/4 p3, 0x0

    invoke-static {p1, p3}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$fputcacheAudioOutputValue(Lorg/telegram/ui/GroupCallActivity;Ljava/lang/Integer;)V

    .line 2352
    new-instance p1, Lorg/telegram/ui/GroupCallActivity$6$$ExternalSyntheticLambda9;

    invoke-direct {p1, p0, p2}, Lorg/telegram/ui/GroupCallActivity$6$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/GroupCallActivity$6;I)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$onItemClick$2(ZLorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 3

    .line 2063
    iget-object p2, p0, Lorg/telegram/ui/GroupCallActivity$6;->this$0:Lorg/telegram/ui/GroupCallActivity;

    iget-object p2, p2, Lorg/telegram/ui/GroupCallActivity;->call:Lorg/telegram/messenger/ChatObject$Call;

    const/4 p3, 0x0

    const/4 v0, 0x0

    invoke-virtual {p2, v0, p3}, Lorg/telegram/messenger/ChatObject$Call;->toggleRecord(Ljava/lang/String;I)V

    .line 2064
    iget-object p2, p0, Lorg/telegram/ui/GroupCallActivity$6;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/GroupCallActivity;->getUndoView()Lorg/telegram/ui/Components/UndoView;

    move-result-object p2

    if-eqz p1, :cond_0

    const/16 p1, 0x65

    goto :goto_0

    :cond_0
    const/16 p1, 0x28

    :goto_0
    const-wide/16 v1, 0x0

    invoke-virtual {p2, v1, v2, p1, v0}, Lorg/telegram/ui/Components/UndoView;->showWithAction(JILjava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$onItemClick$5(Lorg/telegram/ui/Components/EditTextBoldCursor;Lorg/telegram/ui/ActionBar/AlertDialog$Builder;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 2239
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 2240
    iget-object p3, p0, Lorg/telegram/ui/GroupCallActivity$6;->this$0:Lorg/telegram/ui/GroupCallActivity;

    iget-object p3, p3, Lorg/telegram/ui/GroupCallActivity;->call:Lorg/telegram/messenger/ChatObject$Call;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lorg/telegram/messenger/ChatObject$Call;->setTitle(Ljava/lang/String;)V

    .line 2241
    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->getDismissRunnable()Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private synthetic lambda$onItemClick$6(Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/ui/Components/EditTextBoldCursor;Landroid/content/DialogInterface;)V
    .locals 2

    .line 2246
    iget-object p3, p0, Lorg/telegram/ui/GroupCallActivity$6;->this$0:Lorg/telegram/ui/GroupCallActivity;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p3, v0, p1, p2, v1}, Lorg/telegram/ui/GroupCallActivity;->makeFocusable(Lorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/ui/Components/EditTextBoldCursor;Z)V

    return-void
.end method

.method private synthetic lambda$onItemClick$9(Lorg/telegram/tgnet/TLRPC$InputPeer;ZZZ)V
    .locals 8

    .line 2253
    iget-object p3, p0, Lorg/telegram/ui/GroupCallActivity$6;->this$0:Lorg/telegram/ui/GroupCallActivity;

    iget-object p4, p3, Lorg/telegram/ui/GroupCallActivity;->call:Lorg/telegram/messenger/ChatObject$Call;

    if-nez p4, :cond_0

    goto/16 :goto_4

    .line 2257
    :cond_0
    instance-of p4, p1, Lorg/telegram/tgnet/TLRPC$TL_inputPeerUser;

    if-eqz p4, :cond_1

    .line 2258
    invoke-static {p3}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$fgetaccountInstance(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/messenger/AccountInstance;

    move-result-object p3

    invoke-virtual {p3}, Lorg/telegram/messenger/AccountInstance;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p3

    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$InputPeer;->user_id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p3, v0}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p3

    :goto_0
    move-object v4, p3

    goto :goto_1

    .line 2259
    :cond_1
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChat;

    if-eqz v0, :cond_2

    .line 2260
    invoke-static {p3}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$fgetaccountInstance(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/messenger/AccountInstance;

    move-result-object p3

    invoke-virtual {p3}, Lorg/telegram/messenger/AccountInstance;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p3

    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$InputPeer;->chat_id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p3, v0}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p3

    goto :goto_0

    .line 2262
    :cond_2
    invoke-static {p3}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$fgetaccountInstance(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/messenger/AccountInstance;

    move-result-object p3

    invoke-virtual {p3}, Lorg/telegram/messenger/AccountInstance;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p3

    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$InputPeer;->channel_id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p3, v0}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p3

    goto :goto_0

    .line 2264
    :goto_1
    iget-object p3, p0, Lorg/telegram/ui/GroupCallActivity$6;->this$0:Lorg/telegram/ui/GroupCallActivity;

    iget-object p3, p3, Lorg/telegram/ui/GroupCallActivity;->call:Lorg/telegram/messenger/ChatObject$Call;

    invoke-virtual {p3}, Lorg/telegram/messenger/ChatObject$Call;->isScheduled()Z

    move-result p3

    if-eqz p3, :cond_8

    .line 2265
    iget-object p2, p0, Lorg/telegram/ui/GroupCallActivity$6;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/GroupCallActivity;->getUndoView()Lorg/telegram/ui/Components/UndoView;

    move-result-object v0

    iget-object p2, p0, Lorg/telegram/ui/GroupCallActivity$6;->this$0:Lorg/telegram/ui/GroupCallActivity;

    iget-object v5, p2, Lorg/telegram/ui/GroupCallActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v1, 0x0

    const/16 v3, 0x25

    invoke-virtual/range {v0 .. v7}, Lorg/telegram/ui/Components/UndoView;->showWithAction(JILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 2266
    instance-of p2, p1, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChannel;

    if-eqz p2, :cond_3

    .line 2267
    iget-object p2, p0, Lorg/telegram/ui/GroupCallActivity$6;->this$0:Lorg/telegram/ui/GroupCallActivity;

    new-instance p3, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;

    invoke-direct {p3}, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;-><init>()V

    invoke-static {p2, p3}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$fputselfPeer(Lorg/telegram/ui/GroupCallActivity;Lorg/telegram/tgnet/TLRPC$Peer;)V

    .line 2268
    iget-object p2, p0, Lorg/telegram/ui/GroupCallActivity$6;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {p2}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$fgetselfPeer(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/tgnet/TLRPC$Peer;

    move-result-object p2

    iget-wide p3, p1, Lorg/telegram/tgnet/TLRPC$InputPeer;->channel_id:J

    iput-wide p3, p2, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:J

    goto :goto_2

    :cond_3
    if-eqz p4, :cond_4

    .line 2270
    iget-object p2, p0, Lorg/telegram/ui/GroupCallActivity$6;->this$0:Lorg/telegram/ui/GroupCallActivity;

    new-instance p3, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {p3}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    invoke-static {p2, p3}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$fputselfPeer(Lorg/telegram/ui/GroupCallActivity;Lorg/telegram/tgnet/TLRPC$Peer;)V

    .line 2271
    iget-object p2, p0, Lorg/telegram/ui/GroupCallActivity$6;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {p2}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$fgetselfPeer(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/tgnet/TLRPC$Peer;

    move-result-object p2

    iget-wide p3, p1, Lorg/telegram/tgnet/TLRPC$InputPeer;->user_id:J

    iput-wide p3, p2, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    goto :goto_2

    .line 2272
    :cond_4
    instance-of p2, p1, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChat;

    if-eqz p2, :cond_5

    .line 2273
    iget-object p2, p0, Lorg/telegram/ui/GroupCallActivity$6;->this$0:Lorg/telegram/ui/GroupCallActivity;

    new-instance p3, Lorg/telegram/tgnet/TLRPC$TL_peerChat;

    invoke-direct {p3}, Lorg/telegram/tgnet/TLRPC$TL_peerChat;-><init>()V

    invoke-static {p2, p3}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$fputselfPeer(Lorg/telegram/ui/GroupCallActivity;Lorg/telegram/tgnet/TLRPC$Peer;)V

    .line 2274
    iget-object p2, p0, Lorg/telegram/ui/GroupCallActivity$6;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {p2}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$fgetselfPeer(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/tgnet/TLRPC$Peer;

    move-result-object p2

    iget-wide p3, p1, Lorg/telegram/tgnet/TLRPC$InputPeer;->chat_id:J

    iput-wide p3, p2, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:J

    .line 2276
    :cond_5
    :goto_2
    iget-object p2, p0, Lorg/telegram/ui/GroupCallActivity$6;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {p2, p1}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$fputschedulePeer(Lorg/telegram/ui/GroupCallActivity;Lorg/telegram/tgnet/TLRPC$InputPeer;)V

    .line 2277
    iget-object p2, p0, Lorg/telegram/ui/GroupCallActivity$6;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {p2}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$fgetaccountInstance(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/messenger/AccountInstance;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/AccountInstance;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    iget-object p3, p0, Lorg/telegram/ui/GroupCallActivity$6;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-virtual {p3}, Lorg/telegram/ui/GroupCallActivity;->getChatId()J

    move-result-wide p3

    invoke-virtual {p2, p3, p4}, Lorg/telegram/messenger/MessagesController;->getChatFull(J)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object p2

    if-eqz p2, :cond_7

    .line 2279
    iget-object p3, p0, Lorg/telegram/ui/GroupCallActivity$6;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {p3}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$fgetselfPeer(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/tgnet/TLRPC$Peer;

    move-result-object p3

    iput-object p3, p2, Lorg/telegram/tgnet/TLRPC$ChatFull;->groupcall_default_join_as:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 2280
    instance-of p3, p2, Lorg/telegram/tgnet/TLRPC$TL_chatFull;

    if-eqz p3, :cond_6

    .line 2281
    iget p3, p2, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    const p4, 0x8000

    or-int/2addr p3, p4

    iput p3, p2, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    goto :goto_3

    .line 2283
    :cond_6
    iget p3, p2, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    const/high16 p4, 0x4000000

    or-int/2addr p3, p4

    iput p3, p2, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    .line 2286
    :cond_7
    :goto_3
    new-instance p2, Lorg/telegram/tgnet/tl/TL_phone$saveDefaultGroupCallJoinAs;

    invoke-direct {p2}, Lorg/telegram/tgnet/tl/TL_phone$saveDefaultGroupCallJoinAs;-><init>()V

    .line 2287
    iget-object p3, p0, Lorg/telegram/ui/GroupCallActivity$6;->this$0:Lorg/telegram/ui/GroupCallActivity;

    iget-object p3, p3, Lorg/telegram/ui/GroupCallActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {p3}, Lorg/telegram/messenger/MessagesController;->getInputPeer(Lorg/telegram/tgnet/TLRPC$Chat;)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object p3

    iput-object p3, p2, Lorg/telegram/tgnet/tl/TL_phone$saveDefaultGroupCallJoinAs;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 2288
    iput-object p1, p2, Lorg/telegram/tgnet/tl/TL_phone$saveDefaultGroupCallJoinAs;->join_as:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 2289
    iget-object p1, p0, Lorg/telegram/ui/GroupCallActivity$6;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {p1}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$fgetaccountInstance(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/messenger/AccountInstance;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/AccountInstance;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    new-instance p3, Lorg/telegram/ui/GroupCallActivity$6$$ExternalSyntheticLambda11;

    invoke-direct {p3}, Lorg/telegram/ui/GroupCallActivity$6$$ExternalSyntheticLambda11;-><init>()V

    invoke-virtual {p1, p2, p3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 2292
    iget-object p1, p0, Lorg/telegram/ui/GroupCallActivity$6;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {p1}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$mupdateItems(Lorg/telegram/ui/GroupCallActivity;)V

    return-void

    .line 2294
    :cond_8
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object p3

    if-eqz p3, :cond_a

    if-nez p2, :cond_9

    goto :goto_4

    .line 2297
    :cond_9
    iget-object p2, p0, Lorg/telegram/ui/GroupCallActivity$6;->this$0:Lorg/telegram/ui/GroupCallActivity;

    iget-object p3, p2, Lorg/telegram/ui/GroupCallActivity;->call:Lorg/telegram/messenger/ChatObject$Call;

    iget-object p3, p3, Lorg/telegram/messenger/ChatObject$Call;->participants:Landroidx/collection/LongSparseArray;

    invoke-static {p2}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$fgetselfPeer(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/tgnet/TLRPC$Peer;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v0

    invoke-virtual {p3, v0, v1}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

    .line 2298
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/telegram/messenger/voip/VoIPService;->setGroupCallPeer(Lorg/telegram/tgnet/TLRPC$InputPeer;)V

    .line 2299
    iget-object p1, p0, Lorg/telegram/ui/GroupCallActivity$6;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {p1, v4}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$fputuserSwitchObject(Lorg/telegram/ui/GroupCallActivity;Lorg/telegram/tgnet/TLObject;)V

    :cond_a
    :goto_4
    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .locals 13

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 1992
    iget-object p1, p0, Lorg/telegram/ui/GroupCallActivity$6;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/GroupCallActivity;->onBackPressed()V

    return-void

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    .line 1994
    iget-object p1, p0, Lorg/telegram/ui/GroupCallActivity$6;->this$0:Lorg/telegram/ui/GroupCallActivity;

    iget-object v0, p1, Lorg/telegram/ui/GroupCallActivity;->call:Lorg/telegram/messenger/ChatObject$Call;

    iget-object v0, v0, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$GroupCall;->join_muted:Z

    .line 1995
    invoke-static {p1}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$mtoggleAdminSpeak(Lorg/telegram/ui/GroupCallActivity;)V

    return-void

    :cond_1
    const/4 v3, 0x2

    if-ne p1, v3, :cond_2

    .line 1997
    iget-object p1, p0, Lorg/telegram/ui/GroupCallActivity$6;->this$0:Lorg/telegram/ui/GroupCallActivity;

    iget-object v0, p1, Lorg/telegram/ui/GroupCallActivity;->call:Lorg/telegram/messenger/ChatObject$Call;

    iget-object v0, v0, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iput-boolean v2, v0, Lorg/telegram/tgnet/TLRPC$GroupCall;->join_muted:Z

    .line 1998
    invoke-static {p1}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$mtoggleAdminSpeak(Lorg/telegram/ui/GroupCallActivity;)V

    return-void

    :cond_2
    const/4 v4, 0x3

    if-ne p1, v4, :cond_3

    .line 2000
    iget-object p1, p0, Lorg/telegram/ui/GroupCallActivity$6;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {p1, v1}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$mgetLink(Lorg/telegram/ui/GroupCallActivity;Z)V

    return-void

    :cond_3
    const/16 v4, 0xc

    if-ne p1, v4, :cond_4

    .line 2002
    iget-object p1, p0, Lorg/telegram/ui/GroupCallActivity$6;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {p1, v2}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$msetCommentsEnabled(Lorg/telegram/ui/GroupCallActivity;Z)V

    return-void

    :cond_4
    const/16 v5, 0xd

    if-ne p1, v5, :cond_5

    .line 2004
    iget-object p1, p0, Lorg/telegram/ui/GroupCallActivity$6;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {p1, v1}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$msetCommentsEnabled(Lorg/telegram/ui/GroupCallActivity;Z)V

    return-void

    :cond_5
    const/4 v5, 0x4

    const/4 v6, 0x0

    if-ne p1, v5, :cond_8

    .line 2006
    new-instance p1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v1, p0, Lorg/telegram/ui/GroupCallActivity$6;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-virtual {v1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2008
    iget-object v1, p0, Lorg/telegram/ui/GroupCallActivity$6;->this$0:Lorg/telegram/ui/GroupCallActivity;

    iget-object v1, v1, Lorg/telegram/ui/GroupCallActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->isChannelOrGiga(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2009
    sget v1, Lorg/telegram/messenger/R$string;->VoipChannelEndAlertTitle:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2010
    sget v1, Lorg/telegram/messenger/R$string;->VoipChannelEndAlertText:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto :goto_0

    .line 2012
    :cond_6
    sget v1, Lorg/telegram/messenger/R$string;->VoipGroupEndAlertTitle:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2013
    sget v1, Lorg/telegram/messenger/R$string;->VoipGroupEndAlertText:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2015
    :goto_0
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_listeningText:I

    invoke-virtual {p1, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setDialogButtonColorKey(I)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2017
    sget v1, Lorg/telegram/messenger/R$string;->VoipGroupEnd:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/GroupCallActivity$6$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lorg/telegram/ui/GroupCallActivity$6$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/GroupCallActivity$6;)V

    invoke-virtual {p1, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2039
    sget v1, Lorg/telegram/messenger/R$string;->Cancel:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v6}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2040
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    .line 2042
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_dialogBackground:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->setBackgroundColor(I)V

    .line 2043
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->show()V

    .line 2044
    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->getButton(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_7

    .line 2046
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_leaveCallMenu:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2048
    :cond_7
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_actionBarItems:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->setTextColor(I)V

    return-void

    :cond_8
    const/16 v0, 0x9

    if-ne p1, v0, :cond_9

    .line 2050
    iget-object p1, p0, Lorg/telegram/ui/GroupCallActivity$6;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {p1}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$fgetscreenShareItem(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->callOnClick()Z

    return-void

    :cond_9
    const/4 v0, 0x5

    if-ne p1, v0, :cond_d

    .line 2052
    iget-object p1, p0, Lorg/telegram/ui/GroupCallActivity$6;->this$0:Lorg/telegram/ui/GroupCallActivity;

    iget-object v0, p1, Lorg/telegram/ui/GroupCallActivity;->call:Lorg/telegram/messenger/ChatObject$Call;

    iget-boolean v1, v0, Lorg/telegram/messenger/ChatObject$Call;->recording:Z

    if-eqz v1, :cond_b

    .line 2053
    iget-object v0, v0, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$GroupCall;->record_video_active:Z

    .line 2054
    new-instance v1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v1, p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2055
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_listeningText:I

    invoke-virtual {v1, p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setDialogButtonColorKey(I)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2056
    sget p1, Lorg/telegram/messenger/R$string;->VoipGroupStopRecordingTitle:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2057
    iget-object p1, p0, Lorg/telegram/ui/GroupCallActivity$6;->this$0:Lorg/telegram/ui/GroupCallActivity;

    iget-object p1, p1, Lorg/telegram/ui/GroupCallActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {p1}, Lorg/telegram/messenger/ChatObject;->isChannelOrGiga(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 2058
    sget p1, Lorg/telegram/messenger/R$string;->VoipChannelStopRecordingText:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto :goto_1

    .line 2060
    :cond_a
    sget p1, Lorg/telegram/messenger/R$string;->VoipGroupStopRecordingText:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2062
    :goto_1
    sget p1, Lorg/telegram/messenger/R$string;->Stop:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v2, Lorg/telegram/ui/GroupCallActivity$6$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v0}, Lorg/telegram/ui/GroupCallActivity$6$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/GroupCallActivity$6;Z)V

    invoke-virtual {v1, p1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2066
    sget p1, Lorg/telegram/messenger/R$string;->Cancel:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1, v6}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2067
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    .line 2068
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_dialogBackground:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->setBackgroundColor(I)V

    .line 2069
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->show()V

    .line 2070
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_nameText:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->setTextColor(I)V

    return-void

    .line 2072
    :cond_b
    new-instance p1, Lorg/telegram/ui/GroupCallActivity$6$1;

    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$6;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/GroupCallActivity$6;->this$0:Lorg/telegram/ui/GroupCallActivity;

    iget-object v2, v1, Lorg/telegram/ui/GroupCallActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v1}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$fgethasVideo(Lorg/telegram/ui/GroupCallActivity;)Z

    move-result v1

    invoke-direct {p1, p0, v0, v2, v1}, Lorg/telegram/ui/GroupCallActivity$6$1;-><init>(Lorg/telegram/ui/GroupCallActivity$6;Landroid/content/Context;Lorg/telegram/tgnet/TLRPC$Chat;Z)V

    .line 2142
    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$6;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/GroupCallActivity;->isRtmpStream()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2143
    invoke-virtual {p1, v3}, Lorg/telegram/ui/Components/GroupCallRecordAlert;->onStartRecord(I)V

    return-void

    .line 2145
    :cond_c
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->show()V

    return-void

    :cond_d
    const/4 v0, 0x7

    const/16 v5, 0x8

    if-ne p1, v0, :cond_e

    .line 2149
    iget-object p1, p0, Lorg/telegram/ui/GroupCallActivity$6;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {p1, v2}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$fputchangingPermissions(Lorg/telegram/ui/GroupCallActivity;Z)V

    .line 2150
    iget-object p1, p0, Lorg/telegram/ui/GroupCallActivity$6;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {p1}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$fgeteveryoneItem(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2151
    iget-object p1, p0, Lorg/telegram/ui/GroupCallActivity$6;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {p1}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$fgetadminItem(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2153
    iget-object p1, p0, Lorg/telegram/ui/GroupCallActivity$6;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {p1}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$fgetinviteItem(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2154
    iget-object p1, p0, Lorg/telegram/ui/GroupCallActivity$6;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {p1}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$fgetenableComments(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2155
    iget-object p1, p0, Lorg/telegram/ui/GroupCallActivity$6;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {p1}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$fgetdisableComments(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2156
    iget-object p1, p0, Lorg/telegram/ui/GroupCallActivity$6;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {p1}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$fgetleaveItem(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2157
    iget-object p1, p0, Lorg/telegram/ui/GroupCallActivity$6;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {p1}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$fgetpermissionItem(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2158
    iget-object p1, p0, Lorg/telegram/ui/GroupCallActivity$6;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {p1}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$fgeteditTitleItem(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2159
    iget-object p1, p0, Lorg/telegram/ui/GroupCallActivity$6;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {p1}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$fgetrecordItem(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2160
    iget-object p1, p0, Lorg/telegram/ui/GroupCallActivity$6;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {p1}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$fgetscreenItem(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2161
    iget-object p1, p0, Lorg/telegram/ui/GroupCallActivity$6;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {p1}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$fgetaccountSelectCell(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/Cells/AccountSelectCell;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2162
    iget-object p1, p0, Lorg/telegram/ui/GroupCallActivity$6;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {p1}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$fgetsoundItem(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2163
    iget-object p1, p0, Lorg/telegram/ui/GroupCallActivity$6;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {p1}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$fgetnoiseItem(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2164
    iget-object p1, p0, Lorg/telegram/ui/GroupCallActivity$6;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {p1}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$fgetotherItem(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->forceUpdatePopupPosition()V

    return-void

    :cond_e
    const/4 v0, 0x6

    if-ne p1, v0, :cond_12

    .line 2166
    iget-object p1, p0, Lorg/telegram/ui/GroupCallActivity$6;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {p1, v1}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$fputenterEventSent(Lorg/telegram/ui/GroupCallActivity;Z)V

    .line 2167
    new-instance p1, Lorg/telegram/ui/Components/EditTextBoldCursor;

    iget-object v3, p0, Lorg/telegram/ui/GroupCallActivity$6;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-virtual {v3}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {p1, v3}, Lorg/telegram/ui/Components/EditTextBoldCursor;-><init>(Landroid/content/Context;)V

    .line 2168
    iget-object v3, p0, Lorg/telegram/ui/GroupCallActivity$6;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-virtual {v3}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lorg/telegram/ui/ActionBar/Theme;->createEditTextDrawable(Landroid/content/Context;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2170
    new-instance v3, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v4, p0, Lorg/telegram/ui/GroupCallActivity$6;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-virtual {v4}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2171
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_listeningText:I

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setDialogButtonColorKey(I)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2172
    iget-object v4, p0, Lorg/telegram/ui/GroupCallActivity$6;->this$0:Lorg/telegram/ui/GroupCallActivity;

    iget-object v4, v4, Lorg/telegram/ui/GroupCallActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v4}, Lorg/telegram/messenger/ChatObject;->isChannelOrGiga(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 2173
    sget v4, Lorg/telegram/messenger/R$string;->VoipChannelTitle:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto :goto_2

    .line 2175
    :cond_f
    sget v4, Lorg/telegram/messenger/R$string;->VoipGroupTitle:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2177
    :goto_2
    invoke-virtual {v3, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setCheckFocusable(Z)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2178
    sget v4, Lorg/telegram/messenger/R$string;->Cancel:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lorg/telegram/ui/GroupCallActivity$6$$ExternalSyntheticLambda2;

    invoke-direct {v5, p1}, Lorg/telegram/ui/GroupCallActivity$6$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/EditTextBoldCursor;)V

    invoke-virtual {v3, v4, v5}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2180
    new-instance v4, Landroid/widget/LinearLayout;

    iget-object v5, p0, Lorg/telegram/ui/GroupCallActivity$6;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-virtual {v5}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2181
    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 2182
    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    const/high16 v5, 0x41800000    # 16.0f

    .line 2184
    invoke-virtual {p1, v2, v5}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setTextSize(IF)V

    .line 2185
    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_nameText:I

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v6

    invoke-virtual {p1, v6}, Lorg/telegram/ui/Components/EditTextEffects;->setTextColor(I)V

    .line 2186
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 2187
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setLines(I)V

    const/16 v6, 0x4001

    .line 2188
    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setInputType(I)V

    const/16 v6, 0x33

    .line 2189
    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 2190
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 2191
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 2192
    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$6;->this$0:Lorg/telegram/ui/GroupCallActivity;

    iget-object v0, v0, Lorg/telegram/ui/GroupCallActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v0, :cond_10

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    goto :goto_3

    :cond_10
    const-string v0, ""

    :goto_3
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 2193
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_lastSeenText:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setHintTextColor(I)V

    .line 2194
    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorColor(I)V

    const/high16 v0, 0x41a00000    # 20.0f

    .line 2195
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorSize(I)V

    const/high16 v0, 0x3fc00000    # 1.5f

    .line 2196
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorWidth(F)V

    const/high16 v0, 0x40800000    # 4.0f

    .line 2197
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-virtual {p1, v1, v0, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    const/16 v11, 0x18

    const/4 v12, 0x0

    const/4 v6, -0x1

    const/16 v7, 0x24

    const/16 v8, 0x33

    const/16 v9, 0x18

    const/4 v10, 0x6

    .line 2198
    invoke-static/range {v6 .. v12}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v4, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2199
    new-instance v0, Lorg/telegram/ui/GroupCallActivity$6$$ExternalSyntheticLambda3;

    invoke-direct {v0, v3}, Lorg/telegram/ui/GroupCallActivity$6$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/ActionBar/AlertDialog$Builder;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 2204
    new-instance v0, Lorg/telegram/ui/GroupCallActivity$6$2;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/GroupCallActivity$6$2;-><init>(Lorg/telegram/ui/GroupCallActivity$6;Lorg/telegram/ui/Components/EditTextBoldCursor;)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 2234
    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$6;->this$0:Lorg/telegram/ui/GroupCallActivity;

    iget-object v0, v0, Lorg/telegram/ui/GroupCallActivity;->call:Lorg/telegram/messenger/ChatObject$Call;

    iget-object v0, v0, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$GroupCall;->title:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 2235
    iget-object v0, p0, Lorg/telegram/ui/GroupCallActivity$6;->this$0:Lorg/telegram/ui/GroupCallActivity;

    iget-object v0, v0, Lorg/telegram/ui/GroupCallActivity;->call:Lorg/telegram/messenger/ChatObject$Call;

    iget-object v0, v0, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$GroupCall;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2236
    invoke-virtual {p1}, Landroid/widget/TextView;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setSelection(I)V

    .line 2238
    :cond_11
    sget v0, Lorg/telegram/messenger/R$string;->Save:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/GroupCallActivity$6$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1, v3}, Lorg/telegram/ui/GroupCallActivity$6$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/GroupCallActivity$6;Lorg/telegram/ui/Components/EditTextBoldCursor;Lorg/telegram/ui/ActionBar/AlertDialog$Builder;)V

    invoke-virtual {v3, v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2244
    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    .line 2245
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_inviteMembersBackground:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->setBackgroundColor(I)V

    .line 2246
    new-instance v1, Lorg/telegram/ui/GroupCallActivity$6$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, v0, p1}, Lorg/telegram/ui/GroupCallActivity$6$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/GroupCallActivity$6;Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/ui/Components/EditTextBoldCursor;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 2247
    new-instance v1, Lorg/telegram/ui/GroupCallActivity$6$$ExternalSyntheticLambda6;

    invoke-direct {v1, p1}, Lorg/telegram/ui/GroupCallActivity$6$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Components/EditTextBoldCursor;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 2248
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->show()V

    .line 2249
    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->setTextColor(I)V

    .line 2250
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return-void

    :cond_12
    if-ne p1, v5, :cond_13

    .line 2252
    iget-object p1, p0, Lorg/telegram/ui/GroupCallActivity$6;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p1, p0, Lorg/telegram/ui/GroupCallActivity$6;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/GroupCallActivity;->getChatId()J

    move-result-wide v1

    neg-long v1, v1

    iget-object p1, p0, Lorg/telegram/ui/GroupCallActivity$6;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {p1}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$fgetaccountInstance(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/messenger/AccountInstance;

    move-result-object v3

    iget-object p1, p0, Lorg/telegram/ui/GroupCallActivity$6;->this$0:Lorg/telegram/ui/GroupCallActivity;

    invoke-static {p1}, Lorg/telegram/ui/GroupCallActivity;->-$$Nest$fgetselfPeer(Lorg/telegram/ui/GroupCallActivity;)Lorg/telegram/tgnet/TLRPC$Peer;

    move-result-object v6

    new-instance v7, Lorg/telegram/ui/GroupCallActivity$6$$ExternalSyntheticLambda7;

    invoke-direct {v7, p0}, Lorg/telegram/ui/GroupCallActivity$6$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/GroupCallActivity$6;)V

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-static/range {v0 .. v7}, Lorg/telegram/ui/Components/JoinCallAlert;->open(Landroid/content/Context;JLorg/telegram/messenger/AccountInstance;Lorg/telegram/ui/ActionBar/BaseFragment;ILorg/telegram/tgnet/TLRPC$Peer;Lorg/telegram/ui/Components/JoinCallAlert$JoinCallAlertDelegate;)V

    return-void

    :cond_13
    const/16 v0, 0xb

    if-ne p1, v0, :cond_15

    .line 2303
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->toggleNoiseSupression()V

    .line 2304
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object p1

    if-nez p1, :cond_14

    goto/16 :goto_c

    .line 2308
    :cond_14
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->noiseSupression:Z

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/voip/VoIPService;->setNoiseSupressionEnabled(Z)V

    return-void

    :cond_15
    const/16 v0, 0xa

    if-ne p1, v0, :cond_20

    .line 2310
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object p1

    if-nez p1, :cond_16

    goto/16 :goto_c

    .line 2314
    :cond_16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2315
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2316
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 2318
    sget v7, Lorg/telegram/messenger/R$string;->VoipAudioRoutingSpeaker:I

    invoke-static {v7}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2319
    sget v7, Lorg/telegram/messenger/R$drawable;->msg_voice_speaker:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2320
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2322
    invoke-virtual {p1}, Lorg/telegram/messenger/voip/VoIPService;->hasEarpiece()Z

    move-result v7

    if-eqz v7, :cond_19

    .line 2323
    invoke-virtual {p1}, Lorg/telegram/messenger/voip/VoIPService;->isHeadsetPlugged()Z

    move-result v7

    if-eqz v7, :cond_17

    sget v7, Lorg/telegram/messenger/R$string;->VoipAudioRoutingHeadset:I

    :goto_4
    invoke-static {v7}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_5

    :cond_17
    sget v7, Lorg/telegram/messenger/R$string;->VoipAudioRoutingPhone:I

    goto :goto_4

    :goto_5
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2324
    invoke-virtual {p1}, Lorg/telegram/messenger/voip/VoIPService;->isHeadsetPlugged()Z

    move-result v7

    if-eqz v7, :cond_18

    sget v7, Lorg/telegram/messenger/R$drawable;->msg_voice_headphones:I

    goto :goto_6

    :cond_18
    sget v7, Lorg/telegram/messenger/R$drawable;->msg_voice_phone:I

    :goto_6
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2325
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2328
    :cond_19
    invoke-virtual {p1}, Lorg/telegram/messenger/voip/VoIPService;->isBluetoothHeadsetConnected()Z

    move-result v7

    if-eqz v7, :cond_1b

    .line 2329
    iget-object v7, p1, Lorg/telegram/messenger/voip/VoIPService;->currentBluetoothDeviceName:Ljava/lang/String;

    if-eqz v7, :cond_1a

    goto :goto_7

    :cond_1a
    sget v7, Lorg/telegram/messenger/R$string;->VoipAudioRoutingBluetooth:I

    invoke-static {v7}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    :goto_7
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2330
    sget v7, Lorg/telegram/messenger/R$drawable;->msg_voice_bluetooth:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2331
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2334
    :cond_1b
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 2335
    new-array v8, v7, [Ljava/lang/CharSequence;

    .line 2336
    new-array v9, v7, [I

    move v10, v1

    :goto_8
    if-ge v10, v7, :cond_1c

    .line 2338
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/CharSequence;

    aput-object v11, v8, v10

    .line 2339
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    aput v11, v9, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    .line 2342
    :cond_1c
    new-instance v0, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    iget-object v5, p0, Lorg/telegram/ui/GroupCallActivity$6;->val$context:Landroid/app/Activity;

    invoke-direct {v0, v5}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;-><init>(Landroid/content/Context;)V

    sget v5, Lorg/telegram/messenger/R$string;->VoipSelectAudioOutput:I

    .line 2343
    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5, v2}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setTitle(Ljava/lang/CharSequence;Z)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    move-result-object v0

    new-instance v5, Lorg/telegram/ui/GroupCallActivity$6$$ExternalSyntheticLambda8;

    invoke-direct {v5, p0, v6}, Lorg/telegram/ui/GroupCallActivity$6$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/GroupCallActivity$6;Ljava/util/ArrayList;)V

    .line 2344
    invoke-virtual {v0, v8, v9, v5}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setItems([Ljava/lang/CharSequence;[ILandroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    move-result-object v0

    .line 2360
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->create()Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object v5

    .line 2362
    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_listViewBackgroundUnscrolled:I

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v7

    invoke-virtual {v5, v7}, Lorg/telegram/ui/ActionBar/BottomSheet;->setBackgroundColor(I)V

    .line 2363
    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lorg/telegram/ui/ActionBar/BottomSheet;->fixNavigationBar(I)V

    .line 2365
    invoke-virtual {p1}, Lorg/telegram/messenger/voip/VoIPService;->getCurrentAudioRoute()I

    move-result v6

    if-ne v6, v2, :cond_1d

    move p1, v1

    goto :goto_9

    .line 2367
    :cond_1d
    invoke-virtual {p1}, Lorg/telegram/messenger/voip/VoIPService;->getCurrentAudioRoute()I

    move-result p1

    if-nez p1, :cond_1e

    move p1, v2

    goto :goto_9

    :cond_1e
    move p1, v3

    .line 2372
    :goto_9
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->show()Lorg/telegram/ui/ActionBar/BottomSheet;

    .line 2373
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_nameText:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    invoke-virtual {v5, v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->setTitleColor(I)V

    .line 2374
    :goto_a
    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/BottomSheet;->getItemViews()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_20

    .line 2375
    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/BottomSheet;->getItemViews()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;

    if-ne v1, p1, :cond_1f

    .line 2378
    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_listeningText:I

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v6

    .line 2379
    iput-boolean v2, v0, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->isSelected:Z

    goto :goto_b

    .line 2381
    :cond_1f
    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_nameText:I

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v6

    .line 2383
    :goto_b
    invoke-virtual {v0, v6}, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->setTextColor(I)V

    .line 2384
    invoke-virtual {v0, v6}, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->setIconColor(I)V

    .line 2385
    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_voipgroup_actionBarItems:I

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v6

    invoke-static {v6, v4}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v6

    invoke-static {v6, v3}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_20
    :goto_c
    return-void
.end method
