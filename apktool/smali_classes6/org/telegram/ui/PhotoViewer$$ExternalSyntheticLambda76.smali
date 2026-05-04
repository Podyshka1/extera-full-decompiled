.class public final synthetic Lorg/telegram/ui/PhotoViewer$$ExternalSyntheticLambda76;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/PhotoViewer;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/Object;

.field public final synthetic f$3:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/PhotoViewer;ILjava/lang/Object;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$$ExternalSyntheticLambda76;->f$0:Lorg/telegram/ui/PhotoViewer;

    iput p2, p0, Lorg/telegram/ui/PhotoViewer$$ExternalSyntheticLambda76;->f$1:I

    iput-object p3, p0, Lorg/telegram/ui/PhotoViewer$$ExternalSyntheticLambda76;->f$2:Ljava/lang/Object;

    iput-object p4, p0, Lorg/telegram/ui/PhotoViewer$$ExternalSyntheticLambda76;->f$3:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$$ExternalSyntheticLambda76;->f$0:Lorg/telegram/ui/PhotoViewer;

    iget v1, p0, Lorg/telegram/ui/PhotoViewer$$ExternalSyntheticLambda76;->f$1:I

    iget-object v2, p0, Lorg/telegram/ui/PhotoViewer$$ExternalSyntheticLambda76;->f$2:Ljava/lang/Object;

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer$$ExternalSyntheticLambda76;->f$3:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, v1, v2, v3, p1}, Lorg/telegram/ui/PhotoViewer;->$r8$lambda$TFkASswEriR7C85rVS3LFw5C1_w(Lorg/telegram/ui/PhotoViewer;ILjava/lang/Object;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;)V

    return-void
.end method
