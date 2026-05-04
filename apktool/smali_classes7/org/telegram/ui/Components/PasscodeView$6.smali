.class Lorg/telegram/ui/Components/PasscodeView$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/PasscodeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/PasscodeView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/PasscodeView;)V
    .locals 0

    .line 1031
    iput-object p1, p0, Lorg/telegram/ui/Components/PasscodeView$6;->this$0:Lorg/telegram/ui/Components/PasscodeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1034
    iget-object v0, p0, Lorg/telegram/ui/Components/PasscodeView$6;->this$0:Lorg/telegram/ui/Components/PasscodeView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PasscodeView;->-$$Nest$mcheckRetryTextView(Lorg/telegram/ui/Components/PasscodeView;)V

    .line 1035
    iget-object v0, p0, Lorg/telegram/ui/Components/PasscodeView$6;->this$0:Lorg/telegram/ui/Components/PasscodeView;

    invoke-static {v0}, Lorg/telegram/ui/Components/PasscodeView;->-$$Nest$fgetcheckRunnable(Lorg/telegram/ui/Components/PasscodeView;)Ljava/lang/Runnable;

    move-result-object v0

    const-wide/16 v1, 0x64

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method
