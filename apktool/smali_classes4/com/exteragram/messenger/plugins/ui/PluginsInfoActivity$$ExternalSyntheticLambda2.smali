.class public final synthetic Lcom/exteragram/messenger/plugins/ui/PluginsInfoActivity$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/util/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/content/SharedPreferences;


# direct methods
.method public synthetic constructor <init>(Landroid/content/SharedPreferences;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/exteragram/messenger/plugins/ui/PluginsInfoActivity$$ExternalSyntheticLambda2;->f$0:Landroid/content/SharedPreferences;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/ui/PluginsInfoActivity$$ExternalSyntheticLambda2;->f$0:Landroid/content/SharedPreferences;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v0, p1}, Lcom/exteragram/messenger/plugins/ui/PluginsInfoActivity;->$r8$lambda$W4VL9MhcoPOWziaGyIvwfRWHxNQ(Landroid/content/SharedPreferences;Ljava/lang/Boolean;)V

    return-void
.end method
