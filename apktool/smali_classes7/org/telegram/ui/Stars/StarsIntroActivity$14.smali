.class Lorg/telegram/ui/Stars/StarsIntroActivity$14;
.super Lorg/telegram/messenger/browser/Browser$Progress;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stars/StarsIntroActivity;->showSubscriptionSheet(Landroid/content/Context;ILorg/telegram/tgnet/tl/TL_stars$StarsSubscription;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/BottomSheet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;)V
    .locals 0

    .line 4883
    iput-object p1, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$14;->val$button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-direct {p0}, Lorg/telegram/messenger/browser/Browser$Progress;-><init>()V

    return-void
.end method


# virtual methods
.method public end()V
    .locals 2

    .line 4886
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarsIntroActivity$14;->val$button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setLoading(Z)V

    return-void
.end method
