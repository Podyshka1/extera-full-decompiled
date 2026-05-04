.class public abstract Lcom/exteragram/messenger/ai/AiConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEFAULT_SERVICE:Lcom/exteragram/messenger/ai/data/Service;

.field private static configLoaded:Z

.field public static editor:Landroid/content/SharedPreferences$Editor;

.field public static insertAsQuote:Z

.field public static preferences:Landroid/content/SharedPreferences;

.field public static responseStreaming:Z

.field public static saveHistory:Z

.field public static showResponseOnly:Z

.field private static final sync:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 34
    new-instance v0, Lcom/exteragram/messenger/ai/data/Service;

    const-string v1, "gemini-2.5-flash"

    const/4 v2, 0x0

    const-string v3, "https://generativelanguage.googleapis.com/v1beta"

    invoke-direct {v0, v3, v1, v2}, Lcom/exteragram/messenger/ai/data/Service;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/exteragram/messenger/ai/AiConfig;->DEFAULT_SERVICE:Lcom/exteragram/messenger/ai/data/Service;

    .line 35
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/exteragram/messenger/ai/AiConfig;->sync:Ljava/lang/Object;

    .line 47
    invoke-static {}, Lcom/exteragram/messenger/ai/AiConfig;->loadConfig()V

    return-void
.end method

.method public static clearConversationHistory()V
    .locals 2

    .line 98
    sget-object v0, Lcom/exteragram/messenger/ai/AiConfig;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "conversationHistory"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static clearSelectedService()V
    .locals 2

    .line 145
    sget-object v0, Lcom/exteragram/messenger/ai/AiConfig;->editor:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v1, "selectedService"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 146
    invoke-static {}, Lcom/exteragram/messenger/ai/AiConfig;->clearConversationHistory()V

    return-void
.end method

.method public static getConversationHistory()Ljava/util/ArrayList;
    .locals 4

    .line 87
    new-instance v0, Lcom/exteragram/messenger/ai/AiConfig$1;

    invoke-direct {v0}, Lcom/exteragram/messenger/ai/AiConfig$1;-><init>()V

    .line 88
    invoke-virtual {v0}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 89
    sget-object v1, Lcom/exteragram/messenger/ai/AiConfig;->preferences:Landroid/content/SharedPreferences;

    const-string v2, "conversationHistory"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 93
    :cond_0
    sget-object v2, Lcom/exteragram/messenger/ExteraConfig;->GSON:Lcom/google/gson/Gson;

    invoke-virtual {v2, v1, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    return-object v0

    .line 94
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public static getRoles()Ljava/util/ArrayList;
    .locals 4

    .line 106
    new-instance v0, Lcom/exteragram/messenger/ai/AiConfig$2;

    invoke-direct {v0}, Lcom/exteragram/messenger/ai/AiConfig$2;-><init>()V

    .line 107
    invoke-virtual {v0}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 108
    sget-object v1, Lcom/exteragram/messenger/ai/AiConfig;->preferences:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "roles"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 113
    :cond_0
    :try_start_0
    sget-object v2, Lcom/exteragram/messenger/ExteraConfig;->GSON:Lcom/google/gson/Gson;

    invoke-virtual {v2, v1, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    return-object v0

    .line 114
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 116
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public static getSelectedRole()Ljava/lang/String;
    .locals 3

    .line 122
    sget-object v0, Lcom/exteragram/messenger/ai/AiConfig;->preferences:Landroid/content/SharedPreferences;

    invoke-static {}, Lcom/exteragram/messenger/ai/data/Suggestions;->values()[Lcom/exteragram/messenger/ai/data/Suggestions;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/exteragram/messenger/ai/data/Suggestions;->getRole()Lcom/exteragram/messenger/ai/data/Role;

    move-result-object v1

    invoke-virtual {v1}, Lcom/exteragram/messenger/ai/data/Role;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "selectedRole"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSelectedService()I
    .locals 3

    .line 136
    sget-object v0, Lcom/exteragram/messenger/ai/AiConfig;->preferences:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/exteragram/messenger/ai/AiConfig;->DEFAULT_SERVICE:Lcom/exteragram/messenger/ai/data/Service;

    invoke-virtual {v1}, Lcom/exteragram/messenger/ai/data/Service;->hashCode()I

    move-result v1

    const-string/jumbo v2, "selectedService"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getServices()Ljava/util/ArrayList;
    .locals 4

    .line 150
    new-instance v0, Lcom/exteragram/messenger/ai/AiConfig$3;

    invoke-direct {v0}, Lcom/exteragram/messenger/ai/AiConfig$3;-><init>()V

    .line 151
    invoke-virtual {v0}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 152
    sget-object v1, Lcom/exteragram/messenger/ai/AiConfig;->preferences:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "services"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 154
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 157
    :cond_0
    :try_start_0
    sget-object v2, Lcom/exteragram/messenger/ExteraConfig;->GSON:Lcom/google/gson/Gson;

    invoke-virtual {v2, v1, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    return-object v0

    .line 158
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 160
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 161
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public static loadConfig()V
    .locals 5

    .line 51
    sget-object v0, Lcom/exteragram/messenger/ai/AiConfig;->sync:Ljava/lang/Object;

    monitor-enter v0

    .line 52
    :try_start_0
    sget-boolean v1, Lcom/exteragram/messenger/ai/AiConfig;->configLoaded:Z

    if-eqz v1, :cond_0

    .line 53
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    goto :goto_0

    .line 56
    :cond_0
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v2, "gptconfig"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    sput-object v1, Lcom/exteragram/messenger/ai/AiConfig;->preferences:Landroid/content/SharedPreferences;

    .line 57
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    sput-object v1, Lcom/exteragram/messenger/ai/AiConfig;->editor:Landroid/content/SharedPreferences$Editor;

    .line 59
    sget-object v1, Lcom/exteragram/messenger/ai/AiConfig;->preferences:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "saveHistory"

    const/4 v4, 0x1

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/exteragram/messenger/ai/AiConfig;->saveHistory:Z

    .line 60
    sget-object v1, Lcom/exteragram/messenger/ai/AiConfig;->preferences:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "responseStreaming"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/exteragram/messenger/ai/AiConfig;->responseStreaming:Z

    .line 61
    sget-object v1, Lcom/exteragram/messenger/ai/AiConfig;->preferences:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "showResponseOnly"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/exteragram/messenger/ai/AiConfig;->showResponseOnly:Z

    .line 62
    sget-object v1, Lcom/exteragram/messenger/ai/AiConfig;->preferences:Landroid/content/SharedPreferences;

    const-string v2, "insertAsQuote"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/exteragram/messenger/ai/AiConfig;->insertAsQuote:Z

    .line 64
    sput-boolean v4, Lcom/exteragram/messenger/ai/AiConfig;->configLoaded:Z

    .line 65
    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static removeLastFromHistory()V
    .locals 3

    .line 170
    invoke-static {}, Lcom/exteragram/messenger/ai/AiConfig;->getConversationHistory()Ljava/util/ArrayList;

    move-result-object v0

    .line 171
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    .line 172
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 173
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 174
    invoke-static {v0}, Lcom/exteragram/messenger/ai/AiConfig;->saveConversationHistory(Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method public static saveConversationHistory(Ljava/util/ArrayList;)V
    .locals 2

    .line 83
    sget-object v0, Lcom/exteragram/messenger/ai/AiConfig;->editor:Landroid/content/SharedPreferences$Editor;

    sget-object v1, Lcom/exteragram/messenger/ExteraConfig;->GSON:Lcom/google/gson/Gson;

    invoke-virtual {v1, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "conversationHistory"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static saveRoles(Ljava/util/ArrayList;)V
    .locals 2

    .line 102
    sget-object v0, Lcom/exteragram/messenger/ai/AiConfig;->editor:Landroid/content/SharedPreferences$Editor;

    sget-object v1, Lcom/exteragram/messenger/ExteraConfig;->GSON:Lcom/google/gson/Gson;

    invoke-virtual {v1, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v1, "roles"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static saveServices(Ljava/util/ArrayList;)V
    .locals 2

    .line 166
    sget-object v0, Lcom/exteragram/messenger/ai/AiConfig;->editor:Landroid/content/SharedPreferences$Editor;

    sget-object v1, Lcom/exteragram/messenger/ExteraConfig;->GSON:Lcom/google/gson/Gson;

    invoke-virtual {v1, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v1, "services"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setSelectedRole(Lcom/exteragram/messenger/ai/data/Role;)V
    .locals 2

    .line 126
    sget-object v0, Lcom/exteragram/messenger/ai/AiConfig;->editor:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v1, "selectedRole"

    invoke-virtual {p0}, Lcom/exteragram/messenger/ai/data/Role;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 127
    invoke-static {}, Lcom/exteragram/messenger/ai/AiConfig;->clearConversationHistory()V

    return-void
.end method

.method public static setSelectedServices(Lcom/exteragram/messenger/ai/data/Service;)V
    .locals 2

    .line 140
    sget-object v0, Lcom/exteragram/messenger/ai/AiConfig;->editor:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v1, "selectedService"

    invoke-virtual {p0}, Lcom/exteragram/messenger/ai/data/Service;->hashCode()I

    move-result p0

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 141
    invoke-static {}, Lcom/exteragram/messenger/ai/AiConfig;->clearConversationHistory()V

    return-void
.end method
