.class public final synthetic Lorg/telegram/ui/Components/SlotsDrawable$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Components/SlotsDrawable;

.field public final synthetic f$1:Z

.field public final synthetic f$2:I

.field public final synthetic f$3:Lorg/telegram/ui/Cells/ChatMessageCell;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Components/SlotsDrawable;ZILorg/telegram/ui/Cells/ChatMessageCell;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/SlotsDrawable$$ExternalSyntheticLambda7;->f$0:Lorg/telegram/ui/Components/SlotsDrawable;

    iput-boolean p2, p0, Lorg/telegram/ui/Components/SlotsDrawable$$ExternalSyntheticLambda7;->f$1:Z

    iput p3, p0, Lorg/telegram/ui/Components/SlotsDrawable$$ExternalSyntheticLambda7;->f$2:I

    iput-object p4, p0, Lorg/telegram/ui/Components/SlotsDrawable$$ExternalSyntheticLambda7;->f$3:Lorg/telegram/ui/Cells/ChatMessageCell;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Components/SlotsDrawable$$ExternalSyntheticLambda7;->f$0:Lorg/telegram/ui/Components/SlotsDrawable;

    iget-boolean v1, p0, Lorg/telegram/ui/Components/SlotsDrawable$$ExternalSyntheticLambda7;->f$1:Z

    iget v2, p0, Lorg/telegram/ui/Components/SlotsDrawable$$ExternalSyntheticLambda7;->f$2:I

    iget-object v3, p0, Lorg/telegram/ui/Components/SlotsDrawable$$ExternalSyntheticLambda7;->f$3:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v0, v1, v2, v3}, Lorg/telegram/ui/Components/SlotsDrawable;->$r8$lambda$8O05U10i4cYNDSyhRyCvKA40VHg(Lorg/telegram/ui/Components/SlotsDrawable;ZILorg/telegram/ui/Cells/ChatMessageCell;)V

    return-void
.end method
