.class public final synthetic Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda147;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field public final synthetic f$0:[I

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>([IILjava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda147;->f$0:[I

    iput p2, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda147;->f$1:I

    iput-object p3, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda147;->f$2:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda147;->f$0:[I

    iget v1, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda147;->f$1:I

    iget-object v2, p0, Lorg/telegram/ui/Components/AlertsCreator$$ExternalSyntheticLambda147;->f$2:Ljava/lang/Runnable;

    invoke-static {v0, v1, v2, p1}, Lorg/telegram/ui/Components/AlertsCreator;->$r8$lambda$ETRWeVgl2nw7uSxfjUUb7dt_R68([IILjava/lang/Runnable;Landroid/content/DialogInterface;)V

    return-void
.end method
