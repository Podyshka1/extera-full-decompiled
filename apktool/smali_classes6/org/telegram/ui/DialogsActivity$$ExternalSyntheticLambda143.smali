.class public final synthetic Lorg/telegram/ui/DialogsActivity$$ExternalSyntheticLambda143;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/DialogsActivity;

.field public final synthetic f$1:Lorg/telegram/ui/Components/ItemOptions;

.field public final synthetic f$2:Ljava/util/List;

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/DialogsActivity;Lorg/telegram/ui/Components/ItemOptions;Ljava/util/List;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$$ExternalSyntheticLambda143;->f$0:Lorg/telegram/ui/DialogsActivity;

    iput-object p2, p0, Lorg/telegram/ui/DialogsActivity$$ExternalSyntheticLambda143;->f$1:Lorg/telegram/ui/Components/ItemOptions;

    iput-object p3, p0, Lorg/telegram/ui/DialogsActivity$$ExternalSyntheticLambda143;->f$2:Ljava/util/List;

    iput p4, p0, Lorg/telegram/ui/DialogsActivity$$ExternalSyntheticLambda143;->f$3:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$$ExternalSyntheticLambda143;->f$0:Lorg/telegram/ui/DialogsActivity;

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$$ExternalSyntheticLambda143;->f$1:Lorg/telegram/ui/Components/ItemOptions;

    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$$ExternalSyntheticLambda143;->f$2:Ljava/util/List;

    iget v3, p0, Lorg/telegram/ui/DialogsActivity$$ExternalSyntheticLambda143;->f$3:I

    invoke-static {v0, v1, v2, v3}, Lorg/telegram/ui/DialogsActivity;->$r8$lambda$LY5fBwcpcfIu60plv5k9TOPquMQ(Lorg/telegram/ui/DialogsActivity;Lorg/telegram/ui/Components/ItemOptions;Ljava/util/List;I)V

    return-void
.end method
