.class Lorg/telegram/ui/VoIPFragment$3;
.super Lorg/telegram/ui/Components/BackgroundGradientDrawable$ListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/VoIPFragment;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/VoIPFragment;


# direct methods
.method constructor <init>(Lorg/telegram/ui/VoIPFragment;)V
    .locals 0

    .line 870
    iput-object p1, p0, Lorg/telegram/ui/VoIPFragment$3;->this$0:Lorg/telegram/ui/VoIPFragment;

    invoke-direct {p0}, Lorg/telegram/ui/Components/BackgroundGradientDrawable$ListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAllSizesReady()V
    .locals 1

    .line 873
    iget-object v0, p0, Lorg/telegram/ui/VoIPFragment$3;->this$0:Lorg/telegram/ui/VoIPFragment;

    invoke-static {v0}, Lorg/telegram/ui/VoIPFragment;->-$$Nest$fgetgradientLayout(Lorg/telegram/ui/VoIPFragment;)Lorg/telegram/ui/Components/voip/VoIpGradientLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method
