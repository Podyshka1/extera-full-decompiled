.class Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;
.super Lorg/telegram/ui/Components/ChatAttachAlert$AttachButtonBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/ChatAttachAlert;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AttachBotButton"
.end annotation


# instance fields
.field private attachMenuBot:Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;

.field private currentUser:Lorg/telegram/tgnet/TLRPC$User;

.field final synthetic this$0:Lorg/telegram/ui/Components/ChatAttachAlert;


# direct methods
.method public static synthetic $r8$lambda$-Q4NR2NsLg9EoXirNGvADBmdOEU(Lorg/telegram/messenger/ImageReceiver;ZZZ)V
    .locals 0

    .line 1155
    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 1156
    instance-of p1, p0, Lorg/telegram/ui/Components/RLottieDrawable;

    if-eqz p1, :cond_0

    .line 1157
    check-cast p0, Lorg/telegram/ui/Components/RLottieDrawable;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/RLottieDrawable;->setCustomEndFrame(I)Z

    .line 1158
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RLottieDrawable;->stop()V

    const/4 p2, 0x0

    .line 1159
    invoke-virtual {p0, p2, p1}, Lorg/telegram/ui/Components/RLottieDrawable;->setProgress(FZ)V

    :cond_0
    return-void
.end method

.method static bridge synthetic -$$Nest$fgetattachMenuBot(Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;)Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;->attachMenuBot:Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcurrentUser(Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;)Lorg/telegram/tgnet/TLRPC$User;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    return-object p0
.end method

.method public constructor <init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;)V
    .locals 1

    .line 1146
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    .line 1147
    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButtonBase;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 1149
    invoke-virtual {p0, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    const/4 v0, 0x1

    .line 1150
    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 1151
    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 1153
    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$700(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object p1

    invoke-static {p2, p1}, Lorg/telegram/ui/Components/glass/GlassTabView;->createAttachBotTab(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/glass/GlassTabView;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButtonBase;->glassTabView:Lorg/telegram/ui/Components/glass/GlassTabView;

    .line 1154
    invoke-virtual {p1}, Lorg/telegram/ui/Components/glass/GlassTabView;->getBackupImageView()Lorg/telegram/ui/Components/BackupImageView;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/ui/Components/BackupImageView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    new-instance p2, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton$$ExternalSyntheticLambda0;

    invoke-direct {p2}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/ImageReceiver;->setDelegate(Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;)V

    .line 1162
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButtonBase;->glassTabView:Lorg/telegram/ui/Components/glass/GlassTabView;

    const/4 p2, -0x1

    const/high16 v0, -0x40800000    # -1.0f

    invoke-static {p2, v0}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    .line 1167
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    const/4 v0, 0x0

    .line 1168
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;->updateCheckedState(Z)V

    return-void
.end method

.method public setAttachBot(Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;)V
    .locals 2

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 1206
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButtonBase;->glassTabView:Lorg/telegram/ui/Components/glass/GlassTabView;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget v1, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    invoke-virtual {v0, p1, p2, v1}, Lorg/telegram/ui/Components/glass/GlassTabView;->setAttachBot(Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;I)V

    .line 1207
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    .line 1208
    iput-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;->attachMenuBot:Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;

    .line 1209
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButtonBase;->glassTabView:Lorg/telegram/ui/Components/glass/GlassTabView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2}, Lorg/telegram/ui/Components/glass/GlassTabView;->setSelected(ZZ)V

    .line 1210
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setUser(Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1195
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButtonBase;->glassTabView:Lorg/telegram/ui/Components/glass/GlassTabView;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget v1, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->currentAccount:I

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/Components/glass/GlassTabView;->setAttachBotUser(Lorg/telegram/tgnet/TLRPC$User;I)V

    .line 1196
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    const/4 p1, 0x0

    .line 1197
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;->attachMenuBot:Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;

    .line 1198
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButtonBase;->glassTabView:Lorg/telegram/ui/Components/glass/GlassTabView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Lorg/telegram/ui/Components/glass/GlassTabView;->setSelected(ZZ)V

    .line 1199
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method updateCheckedState(Z)V
    .locals 6

    .line 1172
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;->attachMenuBot:Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v2, v0, Lorg/telegram/tgnet/TLRPC$User;->id:J

    neg-long v2, v2

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->-$$Nest$fgetselectedId(Lorg/telegram/ui/Components/ChatAttachAlert;)J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 1173
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButtonBase;->glassTabView:Lorg/telegram/ui/Components/glass/GlassTabView;

    invoke-virtual {v2, v0, p1}, Lorg/telegram/ui/Components/glass/GlassTabView;->setSelected(ZZ)V

    .line 1175
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButtonBase;->glassTabView:Lorg/telegram/ui/Components/glass/GlassTabView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/glass/GlassTabView;->getBackupImageView()Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz p1, :cond_1

    if-eqz v0, :cond_2

    if-eqz v2, :cond_2

    .line 1178
    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/RLottieDrawable;->setAutoRepeat(I)V

    const/4 p1, -0x1

    .line 1179
    invoke-virtual {v2, p1}, Lorg/telegram/ui/Components/RLottieDrawable;->setCustomEndFrame(I)Z

    .line 1180
    invoke-virtual {v2, v3, v1}, Lorg/telegram/ui/Components/RLottieDrawable;->setProgress(FZ)V

    .line 1181
    invoke-virtual {v2}, Lorg/telegram/ui/Components/RLottieDrawable;->start()V

    return-void

    :cond_1
    if-eqz v2, :cond_2

    .line 1185
    invoke-virtual {v2}, Lorg/telegram/ui/Components/RLottieDrawable;->stop()V

    .line 1186
    invoke-virtual {v2, v3, v1}, Lorg/telegram/ui/Components/RLottieDrawable;->setProgress(FZ)V

    :cond_2
    return-void
.end method
