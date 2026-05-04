.class Lorg/telegram/ui/Stars/StarsIntroActivity$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stars/StarsIntroActivity;->showSubscriptionSheet(Landroid/content/Context;ILorg/telegram/tgnet/tl/TL_stars$StarsSubscription;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/BottomSheet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$maybeCloseAfterUpdate:[Z

.field final synthetic val$sheet:[Lorg/telegram/ui/ActionBar/BottomSheet;


# direct methods
.method constructor <init>([Z[Lorg/telegram/ui/ActionBar/BottomSheet;)V
    .locals 0

    .line 4538
    iput-object p1, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$12;->val$maybeCloseAfterUpdate:[Z

    iput-object p2, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$12;->val$sheet:[Lorg/telegram/ui/ActionBar/BottomSheet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 0

    .line 4541
    sget p2, Lorg/telegram/messenger/NotificationCenter;->starSubscriptionsLoaded:I

    if-ne p1, p2, :cond_0

    .line 4542
    iget-object p1, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$12;->val$maybeCloseAfterUpdate:[Z

    const/4 p2, 0x0

    aget-boolean p1, p1, p2

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$12;->val$sheet:[Lorg/telegram/ui/ActionBar/BottomSheet;

    aget-object p1, p1, p2

    if-eqz p1, :cond_0

    .line 4543
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    :cond_0
    return-void
.end method
