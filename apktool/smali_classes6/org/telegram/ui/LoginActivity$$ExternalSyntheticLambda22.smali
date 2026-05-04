.class public final synthetic Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda22;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;


# instance fields
.field public final synthetic f$0:Z

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Lorg/telegram/ui/ActionBar/BaseFragment;


# direct methods
.method public synthetic constructor <init>(ZLjava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda22;->f$0:Z

    iput-object p2, p0, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda22;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda22;->f$2:Lorg/telegram/ui/ActionBar/BaseFragment;

    return-void
.end method


# virtual methods
.method public final onClick(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 3

    .line 0
    iget-boolean v0, p0, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda22;->f$0:Z

    iget-object v1, p0, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda22;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda22;->f$2:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-static {v0, v1, v2, p1, p2}, Lorg/telegram/ui/LoginActivity;->$r8$lambda$NEA2cL-pdJBDTcnTMniC1pbQLJI(ZLjava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method
