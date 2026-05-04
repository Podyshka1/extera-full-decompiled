.class public final synthetic Lorg/telegram/ui/PhotoViewer$$ExternalSyntheticLambda91;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/PhotoViewer;

.field public final synthetic f$1:Z

.field public final synthetic f$2:I

.field public final synthetic f$3:I

.field public final synthetic f$4:Z

.field public final synthetic f$5:Z


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/PhotoViewer;ZIIZZ)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$$ExternalSyntheticLambda91;->f$0:Lorg/telegram/ui/PhotoViewer;

    iput-boolean p2, p0, Lorg/telegram/ui/PhotoViewer$$ExternalSyntheticLambda91;->f$1:Z

    iput p3, p0, Lorg/telegram/ui/PhotoViewer$$ExternalSyntheticLambda91;->f$2:I

    iput p4, p0, Lorg/telegram/ui/PhotoViewer$$ExternalSyntheticLambda91;->f$3:I

    iput-boolean p5, p0, Lorg/telegram/ui/PhotoViewer$$ExternalSyntheticLambda91;->f$4:Z

    iput-boolean p6, p0, Lorg/telegram/ui/PhotoViewer$$ExternalSyntheticLambda91;->f$5:Z

    return-void
.end method


# virtual methods
.method public final onClick(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 8

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$$ExternalSyntheticLambda91;->f$0:Lorg/telegram/ui/PhotoViewer;

    iget-boolean v1, p0, Lorg/telegram/ui/PhotoViewer$$ExternalSyntheticLambda91;->f$1:Z

    iget v2, p0, Lorg/telegram/ui/PhotoViewer$$ExternalSyntheticLambda91;->f$2:I

    iget v3, p0, Lorg/telegram/ui/PhotoViewer$$ExternalSyntheticLambda91;->f$3:I

    iget-boolean v4, p0, Lorg/telegram/ui/PhotoViewer$$ExternalSyntheticLambda91;->f$4:Z

    iget-boolean v5, p0, Lorg/telegram/ui/PhotoViewer$$ExternalSyntheticLambda91;->f$5:Z

    move-object v6, p1

    move v7, p2

    invoke-static/range {v0 .. v7}, Lorg/telegram/ui/PhotoViewer;->$r8$lambda$VuyFgyWLua9pJ73WEd79V4WRRdQ(Lorg/telegram/ui/PhotoViewer;ZIIZZLorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method
