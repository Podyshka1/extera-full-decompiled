.class Lorg/telegram/ui/Components/EditTextBoldCursor$3;
.super Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/EditTextBoldCursor;->useAnimatedTextDrawable()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/EditTextBoldCursor;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/EditTextBoldCursor;)V
    .locals 0

    .line 244
    iput-object p1, p0, Lorg/telegram/ui/Components/EditTextBoldCursor$3;->this$0:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-direct {p0}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;-><init>()V

    return-void
.end method


# virtual methods
.method public invalidateSelf()V
    .locals 1

    .line 247
    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextBoldCursor$3;->this$0:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method
