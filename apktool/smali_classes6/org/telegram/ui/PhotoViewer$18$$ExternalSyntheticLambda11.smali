.class public final synthetic Lorg/telegram/ui/PhotoViewer$18$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/PhotoViewer$18;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/PhotoViewer$18;Z)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$18$$ExternalSyntheticLambda11;->f$0:Lorg/telegram/ui/PhotoViewer$18;

    iput-boolean p2, p0, Lorg/telegram/ui/PhotoViewer$18$$ExternalSyntheticLambda11;->f$1:Z

    return-void
.end method


# virtual methods
.method public final onClick(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$18$$ExternalSyntheticLambda11;->f$0:Lorg/telegram/ui/PhotoViewer$18;

    iget-boolean v1, p0, Lorg/telegram/ui/PhotoViewer$18$$ExternalSyntheticLambda11;->f$1:Z

    invoke-static {v0, v1, p1, p2}, Lorg/telegram/ui/PhotoViewer$18;->$r8$lambda$Z_8Lg9HONe3IilhOh2TXIDPo0h0(Lorg/telegram/ui/PhotoViewer$18;ZLorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method
