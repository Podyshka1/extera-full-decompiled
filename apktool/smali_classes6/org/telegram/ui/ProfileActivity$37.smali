.class Lorg/telegram/ui/ProfileActivity$37;
.super Lorg/telegram/ui/SelectAnimatedEmojiDialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ProfileActivity;->showBadgeSelect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ProfileActivity;

.field final synthetic val$defaultBadge:Lcom/exteragram/messenger/api/dto/BadgeDTO;

.field final synthetic val$popup:[Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;


# direct methods
.method public static synthetic $r8$lambda$5HxdhV11dk_862qLM5S8AWSvLcs(Lorg/telegram/ui/ProfileActivity$37;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ProfileActivity$37;->lambda$onEmojiSelected$1(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fqhJqedXg4nsNRRP079Pzp8Vi0Q(Lorg/telegram/ui/ProfileActivity$37;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ProfileActivity$37;->lambda$onEmojiSelected$0(Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/ProfileActivity;Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;ZLjava/lang/Integer;IZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;IIZLcom/exteragram/messenger/api/dto/BadgeDTO;[Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;)V
    .locals 0

    .line 7121
    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$37;->this$0:Lorg/telegram/ui/ProfileActivity;

    iput-object p12, p0, Lorg/telegram/ui/ProfileActivity$37;->val$defaultBadge:Lcom/exteragram/messenger/api/dto/BadgeDTO;

    iput-object p13, p0, Lorg/telegram/ui/ProfileActivity$37;->val$popup:[Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;

    move-object p1, p0

    invoke-direct/range {p1 .. p11}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;ZLjava/lang/Integer;IZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;IIZ)V

    return-void
.end method

.method private synthetic lambda$onEmojiSelected$0(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 7133
    const-string v0, "ok"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 7134
    :cond_1
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$37;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$string;->UnknownError:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/BulletinFactory;->createErrorBulletin(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return-void
.end method

.method private synthetic lambda$onEmojiSelected$1(Ljava/lang/String;)V
    .locals 1

    .line 7132
    new-instance v0, Lorg/telegram/ui/ProfileActivity$37$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/ProfileActivity$37$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/ProfileActivity$37;Ljava/lang/String;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method protected onEmojiSelected(Landroid/view/View;Ljava/lang/Long;Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 2

    if-nez p2, :cond_1

    .line 7124
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$37;->val$defaultBadge:Lcom/exteragram/messenger/api/dto/BadgeDTO;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/exteragram/messenger/api/dto/BadgeDTO;->getDocumentId()J

    move-result-wide p1

    goto :goto_0

    :cond_0
    const-wide/16 p1, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    :goto_0
    const/4 p3, 0x0

    move p4, p3

    :goto_1
    const/4 p5, 0x2

    if-ge p4, p5, :cond_3

    .line 7126
    iget-object p5, p0, Lorg/telegram/ui/ProfileActivity$37;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p5}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetbadgeDrawable(Lorg/telegram/ui/ProfileActivity;)[Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    move-result-object p5

    aget-object p5, p5, p4

    if-eqz p5, :cond_2

    .line 7127
    iget-object p5, p0, Lorg/telegram/ui/ProfileActivity$37;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p5}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetbadgeDrawable(Lorg/telegram/ui/ProfileActivity;)[Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    move-result-object p5

    aget-object p5, p5, p4

    const/4 v0, 0x1

    invoke-virtual {p5, p1, p2, v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->set(JZ)Z

    :cond_2
    add-int/lit8 p4, p4, 0x1

    goto :goto_1

    .line 7131
    :cond_3
    sget-object p4, Lcom/exteragram/messenger/badges/BadgesController;->INSTANCE:Lcom/exteragram/messenger/badges/BadgesController;

    new-instance p5, Lcom/exteragram/messenger/api/dto/BadgeDTO;

    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    move-object p6, v1

    :cond_4
    invoke-direct {p5, p1, p2, p6}, Lcom/exteragram/messenger/api/dto/BadgeDTO;-><init>(JLjava/lang/String;)V

    new-instance p1, Lorg/telegram/ui/ProfileActivity$37$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lorg/telegram/ui/ProfileActivity$37$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ProfileActivity$37;)V

    invoke-virtual {p4, p5, p1}, Lcom/exteragram/messenger/badges/BadgesController;->updateBadge(Lcom/exteragram/messenger/api/dto/BadgeDTO;Ljava/util/function/Consumer;)V

    .line 7139
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$37;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$mupdateEmojiStatusDrawableColor(Lorg/telegram/ui/ProfileActivity;)V

    .line 7141
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$37;->val$popup:[Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;

    aget-object p1, p1, p3

    if-eqz p1, :cond_5

    .line 7142
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$37;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1, v1}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fputselectAnimatedEmojiDialog(Lorg/telegram/ui/ProfileActivity;Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;)V

    .line 7143
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$37;->val$popup:[Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;

    aget-object p1, p1, p3

    invoke-virtual {p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;->dismiss()V

    :cond_5
    return-void
.end method
