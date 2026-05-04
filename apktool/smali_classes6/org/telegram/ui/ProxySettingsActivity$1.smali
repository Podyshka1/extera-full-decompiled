.class Lorg/telegram/ui/ProxySettingsActivity$1;
.super Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ProxySettingsActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ProxySettingsActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ProxySettingsActivity;)V
    .locals 0

    .line 205
    iput-object p1, p0, Lorg/telegram/ui/ProxySettingsActivity$1;->this$0:Lorg/telegram/ui/ProxySettingsActivity;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .locals 9

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 209
    iget-object p1, p0, Lorg/telegram/ui/ProxySettingsActivity$1;->this$0:Lorg/telegram/ui/ProxySettingsActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    return-void

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_6

    .line 211
    iget-object p1, p0, Lorg/telegram/ui/ProxySettingsActivity$1;->this$0:Lorg/telegram/ui/ProxySettingsActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    if-nez p1, :cond_1

    goto/16 :goto_3

    .line 214
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/ProxySettingsActivity$1;->this$0:Lorg/telegram/ui/ProxySettingsActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProxySettingsActivity;->-$$Nest$fgetcurrentProxyInfo(Lorg/telegram/ui/ProxySettingsActivity;)Lorg/telegram/messenger/SharedConfig$ProxyInfo;

    move-result-object p1

    iget-object v1, p0, Lorg/telegram/ui/ProxySettingsActivity$1;->this$0:Lorg/telegram/ui/ProxySettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProxySettingsActivity;->-$$Nest$fgetinputFields(Lorg/telegram/ui/ProxySettingsActivity;)[Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->address:Ljava/lang/String;

    .line 215
    iget-object p1, p0, Lorg/telegram/ui/ProxySettingsActivity$1;->this$0:Lorg/telegram/ui/ProxySettingsActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProxySettingsActivity;->-$$Nest$fgetcurrentProxyInfo(Lorg/telegram/ui/ProxySettingsActivity;)Lorg/telegram/messenger/SharedConfig$ProxyInfo;

    move-result-object p1

    iget-object v1, p0, Lorg/telegram/ui/ProxySettingsActivity$1;->this$0:Lorg/telegram/ui/ProxySettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProxySettingsActivity;->-$$Nest$fgetinputFields(Lorg/telegram/ui/ProxySettingsActivity;)[Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p1, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->port:I

    .line 216
    iget-object p1, p0, Lorg/telegram/ui/ProxySettingsActivity$1;->this$0:Lorg/telegram/ui/ProxySettingsActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProxySettingsActivity;->-$$Nest$fgetcurrentType(Lorg/telegram/ui/ProxySettingsActivity;)I

    move-result p1

    const-string v1, ""

    if-nez p1, :cond_2

    .line 217
    iget-object p1, p0, Lorg/telegram/ui/ProxySettingsActivity$1;->this$0:Lorg/telegram/ui/ProxySettingsActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProxySettingsActivity;->-$$Nest$fgetcurrentProxyInfo(Lorg/telegram/ui/ProxySettingsActivity;)Lorg/telegram/messenger/SharedConfig$ProxyInfo;

    move-result-object p1

    iput-object v1, p1, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->secret:Ljava/lang/String;

    .line 218
    iget-object p1, p0, Lorg/telegram/ui/ProxySettingsActivity$1;->this$0:Lorg/telegram/ui/ProxySettingsActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProxySettingsActivity;->-$$Nest$fgetcurrentProxyInfo(Lorg/telegram/ui/ProxySettingsActivity;)Lorg/telegram/messenger/SharedConfig$ProxyInfo;

    move-result-object p1

    iget-object v1, p0, Lorg/telegram/ui/ProxySettingsActivity$1;->this$0:Lorg/telegram/ui/ProxySettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProxySettingsActivity;->-$$Nest$fgetinputFields(Lorg/telegram/ui/ProxySettingsActivity;)[Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v1

    const/4 v3, 0x2

    aget-object v1, v1, v3

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->username:Ljava/lang/String;

    .line 219
    iget-object p1, p0, Lorg/telegram/ui/ProxySettingsActivity$1;->this$0:Lorg/telegram/ui/ProxySettingsActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProxySettingsActivity;->-$$Nest$fgetcurrentProxyInfo(Lorg/telegram/ui/ProxySettingsActivity;)Lorg/telegram/messenger/SharedConfig$ProxyInfo;

    move-result-object p1

    iget-object v1, p0, Lorg/telegram/ui/ProxySettingsActivity$1;->this$0:Lorg/telegram/ui/ProxySettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProxySettingsActivity;->-$$Nest$fgetinputFields(Lorg/telegram/ui/ProxySettingsActivity;)[Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v1

    const/4 v3, 0x3

    aget-object v1, v1, v3

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->password:Ljava/lang/String;

    goto :goto_0

    .line 221
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/ProxySettingsActivity$1;->this$0:Lorg/telegram/ui/ProxySettingsActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProxySettingsActivity;->-$$Nest$fgetcurrentProxyInfo(Lorg/telegram/ui/ProxySettingsActivity;)Lorg/telegram/messenger/SharedConfig$ProxyInfo;

    move-result-object p1

    iget-object v3, p0, Lorg/telegram/ui/ProxySettingsActivity$1;->this$0:Lorg/telegram/ui/ProxySettingsActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProxySettingsActivity;->-$$Nest$fgetinputFields(Lorg/telegram/ui/ProxySettingsActivity;)[Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v3

    const/4 v4, 0x4

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->secret:Ljava/lang/String;

    .line 222
    iget-object p1, p0, Lorg/telegram/ui/ProxySettingsActivity$1;->this$0:Lorg/telegram/ui/ProxySettingsActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProxySettingsActivity;->-$$Nest$fgetcurrentProxyInfo(Lorg/telegram/ui/ProxySettingsActivity;)Lorg/telegram/messenger/SharedConfig$ProxyInfo;

    move-result-object p1

    iput-object v1, p1, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->username:Ljava/lang/String;

    .line 223
    iget-object p1, p0, Lorg/telegram/ui/ProxySettingsActivity$1;->this$0:Lorg/telegram/ui/ProxySettingsActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProxySettingsActivity;->-$$Nest$fgetcurrentProxyInfo(Lorg/telegram/ui/ProxySettingsActivity;)Lorg/telegram/messenger/SharedConfig$ProxyInfo;

    move-result-object p1

    iput-object v1, p1, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->password:Ljava/lang/String;

    .line 226
    :goto_0
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p1

    .line 227
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 229
    iget-object v3, p0, Lorg/telegram/ui/ProxySettingsActivity$1;->this$0:Lorg/telegram/ui/ProxySettingsActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProxySettingsActivity;->-$$Nest$fgetaddingNewProxy(Lorg/telegram/ui/ProxySettingsActivity;)Z

    move-result v3

    const-string v4, "proxy_enabled"

    if-eqz v3, :cond_3

    .line 230
    iget-object p1, p0, Lorg/telegram/ui/ProxySettingsActivity$1;->this$0:Lorg/telegram/ui/ProxySettingsActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProxySettingsActivity;->-$$Nest$fgetcurrentProxyInfo(Lorg/telegram/ui/ProxySettingsActivity;)Lorg/telegram/messenger/SharedConfig$ProxyInfo;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/SharedConfig;->addProxy(Lorg/telegram/messenger/SharedConfig$ProxyInfo;)Lorg/telegram/messenger/SharedConfig$ProxyInfo;

    .line 231
    iget-object p1, p0, Lorg/telegram/ui/ProxySettingsActivity$1;->this$0:Lorg/telegram/ui/ProxySettingsActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProxySettingsActivity;->-$$Nest$fgetcurrentProxyInfo(Lorg/telegram/ui/ProxySettingsActivity;)Lorg/telegram/messenger/SharedConfig$ProxyInfo;

    move-result-object p1

    sput-object p1, Lorg/telegram/messenger/SharedConfig;->currentProxy:Lorg/telegram/messenger/SharedConfig$ProxyInfo;

    .line 232
    invoke-interface {v1, v4, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    :goto_1
    move v3, v0

    goto :goto_2

    .line 235
    :cond_3
    invoke-interface {p1, v4, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 236
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->saveProxyList()V

    goto :goto_1

    .line 238
    :goto_2
    iget-object p1, p0, Lorg/telegram/ui/ProxySettingsActivity$1;->this$0:Lorg/telegram/ui/ProxySettingsActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProxySettingsActivity;->-$$Nest$fgetaddingNewProxy(Lorg/telegram/ui/ProxySettingsActivity;)Z

    move-result p1

    if-nez p1, :cond_4

    sget-object p1, Lorg/telegram/messenger/SharedConfig;->currentProxy:Lorg/telegram/messenger/SharedConfig$ProxyInfo;

    iget-object v0, p0, Lorg/telegram/ui/ProxySettingsActivity$1;->this$0:Lorg/telegram/ui/ProxySettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProxySettingsActivity;->-$$Nest$fgetcurrentProxyInfo(Lorg/telegram/ui/ProxySettingsActivity;)Lorg/telegram/messenger/SharedConfig$ProxyInfo;

    move-result-object v0

    if-ne p1, v0, :cond_5

    .line 239
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/ProxySettingsActivity$1;->this$0:Lorg/telegram/ui/ProxySettingsActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProxySettingsActivity;->-$$Nest$fgetcurrentProxyInfo(Lorg/telegram/ui/ProxySettingsActivity;)Lorg/telegram/messenger/SharedConfig$ProxyInfo;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->address:Ljava/lang/String;

    const-string v0, "proxy_ip"

    invoke-interface {v1, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 240
    iget-object p1, p0, Lorg/telegram/ui/ProxySettingsActivity$1;->this$0:Lorg/telegram/ui/ProxySettingsActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProxySettingsActivity;->-$$Nest$fgetcurrentProxyInfo(Lorg/telegram/ui/ProxySettingsActivity;)Lorg/telegram/messenger/SharedConfig$ProxyInfo;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->password:Ljava/lang/String;

    const-string v0, "proxy_pass"

    invoke-interface {v1, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 241
    iget-object p1, p0, Lorg/telegram/ui/ProxySettingsActivity$1;->this$0:Lorg/telegram/ui/ProxySettingsActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProxySettingsActivity;->-$$Nest$fgetcurrentProxyInfo(Lorg/telegram/ui/ProxySettingsActivity;)Lorg/telegram/messenger/SharedConfig$ProxyInfo;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->username:Ljava/lang/String;

    const-string v0, "proxy_user"

    invoke-interface {v1, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 242
    iget-object p1, p0, Lorg/telegram/ui/ProxySettingsActivity$1;->this$0:Lorg/telegram/ui/ProxySettingsActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProxySettingsActivity;->-$$Nest$fgetcurrentProxyInfo(Lorg/telegram/ui/ProxySettingsActivity;)Lorg/telegram/messenger/SharedConfig$ProxyInfo;

    move-result-object p1

    iget p1, p1, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->port:I

    const-string v0, "proxy_port"

    invoke-interface {v1, v0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 243
    iget-object p1, p0, Lorg/telegram/ui/ProxySettingsActivity$1;->this$0:Lorg/telegram/ui/ProxySettingsActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProxySettingsActivity;->-$$Nest$fgetcurrentProxyInfo(Lorg/telegram/ui/ProxySettingsActivity;)Lorg/telegram/messenger/SharedConfig$ProxyInfo;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->secret:Ljava/lang/String;

    const-string v0, "proxy_secret"

    invoke-interface {v1, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 244
    iget-object p1, p0, Lorg/telegram/ui/ProxySettingsActivity$1;->this$0:Lorg/telegram/ui/ProxySettingsActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProxySettingsActivity;->-$$Nest$fgetcurrentProxyInfo(Lorg/telegram/ui/ProxySettingsActivity;)Lorg/telegram/messenger/SharedConfig$ProxyInfo;

    move-result-object p1

    iget-object v4, p1, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->address:Ljava/lang/String;

    iget-object p1, p0, Lorg/telegram/ui/ProxySettingsActivity$1;->this$0:Lorg/telegram/ui/ProxySettingsActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProxySettingsActivity;->-$$Nest$fgetcurrentProxyInfo(Lorg/telegram/ui/ProxySettingsActivity;)Lorg/telegram/messenger/SharedConfig$ProxyInfo;

    move-result-object p1

    iget v5, p1, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->port:I

    iget-object p1, p0, Lorg/telegram/ui/ProxySettingsActivity$1;->this$0:Lorg/telegram/ui/ProxySettingsActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProxySettingsActivity;->-$$Nest$fgetcurrentProxyInfo(Lorg/telegram/ui/ProxySettingsActivity;)Lorg/telegram/messenger/SharedConfig$ProxyInfo;

    move-result-object p1

    iget-object v6, p1, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->username:Ljava/lang/String;

    iget-object p1, p0, Lorg/telegram/ui/ProxySettingsActivity$1;->this$0:Lorg/telegram/ui/ProxySettingsActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProxySettingsActivity;->-$$Nest$fgetcurrentProxyInfo(Lorg/telegram/ui/ProxySettingsActivity;)Lorg/telegram/messenger/SharedConfig$ProxyInfo;

    move-result-object p1

    iget-object v7, p1, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->password:Ljava/lang/String;

    iget-object p1, p0, Lorg/telegram/ui/ProxySettingsActivity$1;->this$0:Lorg/telegram/ui/ProxySettingsActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProxySettingsActivity;->-$$Nest$fgetcurrentProxyInfo(Lorg/telegram/ui/ProxySettingsActivity;)Lorg/telegram/messenger/SharedConfig$ProxyInfo;

    move-result-object p1

    iget-object v8, p1, Lorg/telegram/messenger/SharedConfig$ProxyInfo;->secret:Ljava/lang/String;

    invoke-static/range {v3 .. v8}, Lorg/telegram/tgnet/ConnectionsManager;->setProxySettings(ZLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    :cond_5
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 248
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->proxySettingsChanged:I

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 250
    iget-object p1, p0, Lorg/telegram/ui/ProxySettingsActivity$1;->this$0:Lorg/telegram/ui/ProxySettingsActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    :cond_6
    :goto_3
    return-void
.end method
