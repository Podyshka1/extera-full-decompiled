.class public final synthetic Lorg/telegram/ui/Components/UniversalAdapter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Components/SlideChooseView$Callback;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Components/UItem;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Components/UItem;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/UniversalAdapter$$ExternalSyntheticLambda0;->f$0:Lorg/telegram/ui/Components/UItem;

    return-void
.end method


# virtual methods
.method public final onOptionSelected(I)V
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Components/UniversalAdapter$$ExternalSyntheticLambda0;->f$0:Lorg/telegram/ui/Components/UItem;

    invoke-static {v0, p1}, Lorg/telegram/ui/Components/UniversalAdapter;->$r8$lambda$zkYqYy_dtBSQIc15WzODxdmLimw(Lorg/telegram/ui/Components/UItem;I)V

    return-void
.end method

.method public synthetic onTouchEnd()V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/SlideChooseView$Callback$-CC;->$default$onTouchEnd(Lorg/telegram/ui/Components/SlideChooseView$Callback;)V

    return-void
.end method
