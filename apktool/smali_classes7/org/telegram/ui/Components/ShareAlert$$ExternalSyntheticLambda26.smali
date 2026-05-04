.class public final synthetic Lorg/telegram/ui/Components/ShareAlert$$ExternalSyntheticLambda26;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/Utilities$Callback;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Components/ShareAlert;

.field public final synthetic f$1:[Ljava/lang/CharSequence;

.field public final synthetic f$2:Ljava/util/ArrayList;

.field public final synthetic f$3:Z

.field public final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Components/ShareAlert;[Ljava/lang/CharSequence;Ljava/util/ArrayList;ZI)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$$ExternalSyntheticLambda26;->f$0:Lorg/telegram/ui/Components/ShareAlert;

    iput-object p2, p0, Lorg/telegram/ui/Components/ShareAlert$$ExternalSyntheticLambda26;->f$1:[Ljava/lang/CharSequence;

    iput-object p3, p0, Lorg/telegram/ui/Components/ShareAlert$$ExternalSyntheticLambda26;->f$2:Ljava/util/ArrayList;

    iput-boolean p4, p0, Lorg/telegram/ui/Components/ShareAlert$$ExternalSyntheticLambda26;->f$3:Z

    iput p5, p0, Lorg/telegram/ui/Components/ShareAlert$$ExternalSyntheticLambda26;->f$4:I

    return-void
.end method


# virtual methods
.method public final run(Ljava/lang/Object;)V
    .locals 6

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$$ExternalSyntheticLambda26;->f$0:Lorg/telegram/ui/Components/ShareAlert;

    iget-object v1, p0, Lorg/telegram/ui/Components/ShareAlert$$ExternalSyntheticLambda26;->f$1:[Ljava/lang/CharSequence;

    iget-object v2, p0, Lorg/telegram/ui/Components/ShareAlert$$ExternalSyntheticLambda26;->f$2:Ljava/util/ArrayList;

    iget-boolean v3, p0, Lorg/telegram/ui/Components/ShareAlert$$ExternalSyntheticLambda26;->f$3:Z

    iget v4, p0, Lorg/telegram/ui/Components/ShareAlert$$ExternalSyntheticLambda26;->f$4:I

    move-object v5, p1

    check-cast v5, Ljava/util/HashMap;

    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/Components/ShareAlert;->$r8$lambda$bUExi21MOBhz5Aw_y8e8V7bU0-M(Lorg/telegram/ui/Components/ShareAlert;[Ljava/lang/CharSequence;Ljava/util/ArrayList;ZILjava/util/HashMap;)V

    return-void
.end method
