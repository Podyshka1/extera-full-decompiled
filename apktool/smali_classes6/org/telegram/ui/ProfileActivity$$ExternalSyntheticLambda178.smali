.class public final synthetic Lorg/telegram/ui/ProfileActivity$$ExternalSyntheticLambda178;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/Utilities$CallbackReturn;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/ProfileActivity;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/ProfileActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$$ExternalSyntheticLambda178;->f$0:Lorg/telegram/ui/ProfileActivity;

    return-void
.end method


# virtual methods
.method public final run(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$$ExternalSyntheticLambda178;->f$0:Lorg/telegram/ui/ProfileActivity;

    check-cast p1, Landroid/text/style/URLSpan;

    invoke-static {v0, p1}, Lorg/telegram/ui/ProfileActivity;->$r8$lambda$NiedoWn2UO6wO3_PDJ1vEoL_kks(Lorg/telegram/ui/ProfileActivity;Landroid/text/style/URLSpan;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
