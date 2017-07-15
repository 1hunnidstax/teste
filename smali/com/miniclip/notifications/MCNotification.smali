.class public Lcom/miniclip/notifications/MCNotification;
.super Lcom/miniclip/framework/AbstractActivityListener;
.source "MCNotification.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static activity:Landroid/app/Activity;

.field private static isActive:Z

.field private static localNotificationData:Ljava/lang/String;

.field private static pushNotificationData:Ljava/lang/String;

.field private static supportsADM:Z

.field private static supportsGCM:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 30
    const-class v0, Lcom/miniclip/notifications/MCNotification;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miniclip/notifications/MCNotification;->TAG:Ljava/lang/String;

    .line 32
    sput-object v2, Lcom/miniclip/notifications/MCNotification;->activity:Landroid/app/Activity;

    .line 34
    sput-boolean v1, Lcom/miniclip/notifications/MCNotification;->supportsGCM:Z

    .line 35
    sput-boolean v1, Lcom/miniclip/notifications/MCNotification;->supportsADM:Z

    .line 37
    sput-boolean v1, Lcom/miniclip/notifications/MCNotification;->isActive:Z

    .line 38
    sput-object v2, Lcom/miniclip/notifications/MCNotification;->localNotificationData:Ljava/lang/String;

    .line 39
    sput-object v2, Lcom/miniclip/notifications/MCNotification;->pushNotificationData:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/miniclip/framework/AbstractActivityListener;-><init>()V

    return-void
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 28
    sput-boolean p0, Lcom/miniclip/notifications/MCNotification;->isActive:Z

    return p0
.end method

.method static synthetic access$100()V
    .locals 0

    .prologue
    .line 28
    invoke-static {}, Lcom/miniclip/notifications/MCNotification;->signalNotifications()V

    return-void
.end method

.method static synthetic access$200(Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Intent;

    .prologue
    .line 28
    invoke-static {p0}, Lcom/miniclip/notifications/MCNotification;->processNotification(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/miniclip/notifications/MCNotification;->localNotificationData:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 28
    sput-object p0, Lcom/miniclip/notifications/MCNotification;->localNotificationData:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-static {p0}, Lcom/miniclip/notifications/MCNotification;->onReceivedLocalNotification(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/miniclip/notifications/MCNotification;->pushNotificationData:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 28
    sput-object p0, Lcom/miniclip/notifications/MCNotification;->pushNotificationData:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-static {p0}, Lcom/miniclip/notifications/MCNotification;->onReceivedPushNotification(Ljava/lang/String;)V

    return-void
.end method

.method private static appHasNotificationsEnabled()Z
    .locals 15

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 226
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x13

    if-lt v9, v12, :cond_0

    .line 228
    :try_start_0
    sget-object v9, Lcom/miniclip/notifications/MCNotification;->activity:Landroid/app/Activity;

    const-string v12, "appops"

    invoke-virtual {v9, v12}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AppOpsManager;

    .line 229
    .local v4, "mAppOps":Landroid/app/AppOpsManager;
    sget-object v9, Lcom/miniclip/notifications/MCNotification;->activity:Landroid/app/Activity;

    invoke-virtual {v9}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 230
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    sget-object v9, Lcom/miniclip/notifications/MCNotification;->activity:Landroid/app/Activity;

    invoke-virtual {v9}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 231
    .local v6, "pkg":Ljava/lang/String;
    iget v7, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 232
    .local v7, "uid":I
    const/4 v1, 0x0

    .line 234
    .local v1, "appOpsClass":Ljava/lang/Class;
    const-class v9, Landroid/app/AppOpsManager;

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 235
    const-string v9, "checkOpNoThrow"

    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Class;

    const/4 v13, 0x0

    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v14, v12, v13

    const/4 v13, 0x1

    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v14, v12, v13

    const/4 v13, 0x2

    const-class v14, Ljava/lang/String;

    aput-object v14, v12, v13

    invoke-virtual {v1, v9, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 236
    .local v2, "checkOpNoThrowMethod":Ljava/lang/reflect/Method;
    const-string v9, "OP_POST_NOTIFICATION"

    invoke-virtual {v1, v9}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 237
    .local v5, "opPostNotificationValue":Ljava/lang/reflect/Field;
    const-class v9, Ljava/lang/Integer;

    invoke-virtual {v5, v9}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 239
    .local v8, "value":I
    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v9, v12

    const/4 v12, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v9, v12

    const/4 v12, 0x2

    aput-object v6, v9, v12

    invoke-virtual {v2, v4, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    if-nez v9, :cond_1

    move v9, v10

    :goto_0
    move v10, v9

    .line 246
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "appOpsClass":Ljava/lang/Class;
    .end local v2    # "checkOpNoThrowMethod":Ljava/lang/reflect/Method;
    .end local v5    # "opPostNotificationValue":Ljava/lang/reflect/Field;
    .end local v6    # "pkg":Ljava/lang/String;
    .end local v7    # "uid":I
    .end local v8    # "value":I
    :cond_0
    :goto_1
    return v10

    .restart local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v1    # "appOpsClass":Ljava/lang/Class;
    .restart local v2    # "checkOpNoThrowMethod":Ljava/lang/reflect/Method;
    .restart local v5    # "opPostNotificationValue":Ljava/lang/reflect/Field;
    .restart local v6    # "pkg":Ljava/lang/String;
    .restart local v7    # "uid":I
    .restart local v8    # "value":I
    :cond_1
    move v9, v11

    .line 239
    goto :goto_0

    .line 241
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "appOpsClass":Ljava/lang/Class;
    .end local v2    # "checkOpNoThrowMethod":Ljava/lang/reflect/Method;
    .end local v5    # "opPostNotificationValue":Ljava/lang/reflect/Field;
    .end local v6    # "pkg":Ljava/lang/String;
    .end local v7    # "uid":I
    .end local v8    # "value":I
    :catch_0
    move-exception v3

    .line 242
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static cancelAllCustomNotifications()V
    .locals 1

    .prologue
    .line 156
    sget-object v0, Lcom/miniclip/notifications/MCNotification;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/miniclip/notifications/local/LocalNotificationBootReceiver;->removeAllAlarms(Landroid/content/Context;)V

    .line 157
    invoke-static {}, Lcom/miniclip/notifications/MCNotificationCompatManager;->reset()V

    .line 158
    return-void
.end method

.method public static cancelCustomNotification(I)V
    .locals 1
    .param p0, "nid"    # I

    .prologue
    .line 151
    sget-object v0, Lcom/miniclip/notifications/MCNotification;->activity:Landroid/app/Activity;

    invoke-static {v0, p0}, Lcom/miniclip/notifications/local/LocalNotificationBootReceiver;->removeAlarm(Landroid/content/Context;I)V

    .line 152
    invoke-static {p0}, Lcom/miniclip/notifications/MCNotificationCompatManager;->removeNotification(I)V

    .line 153
    return-void
.end method

.method public static createCustomNotification(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 11
    .param p0, "nid"    # I
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "seconds"    # I
    .param p5, "payload"    # Ljava/lang/String;
    .param p6, "groupID"    # Ljava/lang/String;
    .param p7, "bigContentTitle"    # Ljava/lang/String;
    .param p8, "summary"    # Ljava/lang/String;
    .param p9, "priority"    # I

    .prologue
    .line 148
    sget-object v0, Lcom/miniclip/notifications/MCNotification;->activity:Landroid/app/Activity;

    move v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    invoke-static/range {v0 .. v10}, Lcom/miniclip/notifications/local/LocalNotificationBootReceiver;->setupAlarm(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 149
    return-void
.end method

.method public static getADMRegistrationID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 199
    sget-boolean v0, Lcom/miniclip/notifications/MCNotification;->supportsADM:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miniclip/notifications/adm/MCADMIntentService;->getRegistrationID()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static getGCMRegistrationID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 192
    sget-boolean v0, Lcom/miniclip/notifications/MCNotification;->supportsGCM:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miniclip/notifications/MCNotification;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/android/gcm/GCMRegistrar;->getRegistrationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static init(Landroid/content/Intent;)V
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 42
    invoke-static {}, Lcom/miniclip/framework/Miniclip;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sput-object v0, Lcom/miniclip/notifications/MCNotification;->activity:Landroid/app/Activity;

    .line 44
    new-instance v0, Lcom/miniclip/notifications/MCNotification$1;

    invoke-direct {v0}, Lcom/miniclip/notifications/MCNotification$1;-><init>()V

    invoke-static {v0}, Lcom/miniclip/framework/Miniclip;->addListener(Lcom/miniclip/framework/ActivityListener;)Z

    .line 66
    invoke-static {p0}, Lcom/miniclip/notifications/MCNotification;->processNotification(Landroid/content/Intent;)V

    .line 67
    invoke-static {}, Lcom/miniclip/notifications/MCNotification;->signalNotifications()V

    .line 68
    return-void
.end method

.method private static mayRedirectToSettings()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 250
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 251
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 252
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "package:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/miniclip/notifications/MCNotification;->activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 254
    sget-object v2, Lcom/miniclip/notifications/MCNotification;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private static native onReceivedLocalNotification(Ljava/lang/String;)V
.end method

.method private static native onReceivedPushNotification(Ljava/lang/String;)V
.end method

.method public static prepareNotificationStackingInfo(Ljava/lang/String;)V
    .locals 6
    .param p0, "notificationsMap"    # Ljava/lang/String;

    .prologue
    .line 178
    :try_start_0
    sget-object v3, Lcom/miniclip/notifications/MCNotification;->activity:Landroid/app/Activity;

    const-string v4, "GAME_INFO"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 179
    .local v2, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 180
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "NOTIFICATION_STACKING_INFO"

    invoke-interface {v0, v3, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 181
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "settings":Landroid/content/SharedPreferences;
    :goto_0
    return-void

    .line 183
    :catch_0
    move-exception v1

    .line 185
    .local v1, "ex":Ljava/lang/Exception;
    sget-object v3, Lcom/miniclip/notifications/MCNotification;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "prepareNotificationStackingInfo - Failed to set user defaults for value "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static processNotification(Landroid/content/Intent;)V
    .locals 4
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 71
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    if-nez v3, :cond_1

    .line 87
    :cond_0
    :goto_0
    return-void

    .line 74
    :cond_1
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 76
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "localNotification"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 78
    .local v1, "localNotification":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 79
    sput-object v1, Lcom/miniclip/notifications/MCNotification;->localNotificationData:Ljava/lang/String;

    .line 82
    :cond_2
    const-string v3, "pushNotification"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 84
    .local v2, "pushNotification":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 85
    sput-object v2, Lcom/miniclip/notifications/MCNotification;->pushNotificationData:Ljava/lang/String;

    goto :goto_0
.end method

.method private static redirectToSettings()Z
    .locals 4

    .prologue
    .line 258
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 259
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 260
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "package:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/miniclip/notifications/MCNotification;->activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 263
    :try_start_0
    sget-object v2, Lcom/miniclip/notifications/MCNotification;->activity:Landroid/app/Activity;

    invoke-virtual {v2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 271
    const/4 v2, 0x1

    :goto_0
    return v2

    .line 264
    :catch_0
    move-exception v0

    .line 265
    .local v0, "exception":Landroid/content/ActivityNotFoundException;
    sget-object v2, Lcom/miniclip/notifications/MCNotification;->TAG:Ljava/lang/String;

    const-string v3, "Activity not found, could not redirect to settings."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    .line 268
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static registerADM()V
    .locals 5

    .prologue
    .line 127
    :try_start_0
    const-string v3, "com.amazon.device.messaging.ADM"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 129
    new-instance v0, Lcom/amazon/device/messaging/ADM;

    sget-object v3, Lcom/miniclip/notifications/MCNotification;->activity:Landroid/app/Activity;

    invoke-direct {v0, v3}, Lcom/amazon/device/messaging/ADM;-><init>(Landroid/content/Context;)V

    .line 131
    .local v0, "adm":Lcom/amazon/device/messaging/ADM;
    const/4 v3, 0x1

    sput-boolean v3, Lcom/miniclip/notifications/MCNotification;->supportsADM:Z

    .line 133
    invoke-virtual {v0}, Lcom/amazon/device/messaging/ADM;->getRegistrationId()Ljava/lang/String;

    move-result-object v2

    .line 135
    .local v2, "registrationID":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 136
    invoke-virtual {v0}, Lcom/amazon/device/messaging/ADM;->startRegister()V

    .line 140
    :goto_0
    sget-object v3, Lcom/miniclip/notifications/MCNotification;->TAG:Ljava/lang/String;

    const-string v4, "ADM Supported"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    .end local v2    # "registrationID":Ljava/lang/String;
    :goto_1
    return-void

    .line 138
    .restart local v2    # "registrationID":Ljava/lang/String;
    :cond_0
    invoke-static {v2}, Lcom/miniclip/notifications/adm/MCADMIntentService;->setRegistrationID(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 142
    .end local v2    # "registrationID":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 143
    .local v1, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/miniclip/notifications/MCNotification;->TAG:Ljava/lang/String;

    const-string v4, "ADM Exception"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static registerGCM([Ljava/lang/String;)V
    .locals 5
    .param p0, "googleCloudMessagingSenderIds"    # [Ljava/lang/String;

    .prologue
    .line 105
    invoke-static {p0}, Lcom/miniclip/notifications/gcm/MCGCMIntentService;->setSenderIds([Ljava/lang/String;)V

    .line 107
    :try_start_0
    sget-object v2, Lcom/miniclip/notifications/MCNotification;->activity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/google/android/gcm/GCMRegistrar;->checkDevice(Landroid/content/Context;)V

    .line 108
    sget-object v2, Lcom/miniclip/notifications/MCNotification;->activity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/google/android/gcm/GCMRegistrar;->checkManifest(Landroid/content/Context;)V

    .line 109
    sget-object v2, Lcom/miniclip/notifications/MCNotification;->activity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/google/android/gcm/GCMRegistrar;->getRegistrationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 110
    .local v1, "gcmId":Ljava/lang/String;
    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 111
    sget-object v2, Lcom/miniclip/notifications/MCNotification;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GCM SenderIds: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    sget-object v2, Lcom/miniclip/notifications/MCNotification;->activity:Landroid/app/Activity;

    invoke-static {v2, p0}, Lcom/google/android/gcm/GCMRegistrar;->register(Landroid/content/Context;[Ljava/lang/String;)V

    .line 116
    :goto_0
    const/4 v2, 0x1

    sput-boolean v2, Lcom/miniclip/notifications/MCNotification;->supportsGCM:Z

    .line 121
    .end local v1    # "gcmId":Ljava/lang/String;
    :goto_1
    return-void

    .line 114
    .restart local v1    # "gcmId":Ljava/lang/String;
    :cond_0
    sget-object v2, Lcom/miniclip/notifications/MCNotification;->TAG:Ljava/lang/String;

    const-string v3, "GCM Already registered"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 118
    .end local v1    # "gcmId":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 119
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/miniclip/notifications/MCNotification;->TAG:Ljava/lang/String;

    const-string v3, "GCM Exception"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static setPushNotifications(Z)V
    .locals 3
    .param p0, "value"    # Z

    .prologue
    .line 161
    if-nez p0, :cond_0

    .line 162
    sget-object v1, Lcom/miniclip/notifications/MCNotification;->activity:Landroid/app/Activity;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 163
    .local v0, "notifManager":Landroid/app/NotificationManager;
    invoke-virtual {v0}, Landroid/app/NotificationManager;->cancelAll()V

    .line 166
    .end local v0    # "notifManager":Landroid/app/NotificationManager;
    :cond_0
    sget-boolean v1, Lcom/miniclip/notifications/MCNotification;->supportsGCM:Z

    if-eqz v1, :cond_1

    .line 167
    sget-object v1, Lcom/miniclip/notifications/MCNotification;->activity:Landroid/app/Activity;

    invoke-static {v1, p0}, Lcom/miniclip/notifications/gcm/MCGCMIntentService;->setEnabled(Landroid/content/Context;Z)V

    .line 169
    :cond_1
    sget-boolean v1, Lcom/miniclip/notifications/MCNotification;->supportsADM:Z

    if-eqz v1, :cond_2

    .line 170
    sget-object v1, Lcom/miniclip/notifications/MCNotification;->activity:Landroid/app/Activity;

    invoke-static {v1, p0}, Lcom/miniclip/notifications/adm/MCADMIntentService;->setEnabled(Landroid/content/Context;Z)V

    .line 171
    :cond_2
    return-void
.end method

.method private static signalNotifications()V
    .locals 2

    .prologue
    .line 90
    sget-object v0, Lcom/miniclip/framework/ThreadingContext;->Main:Lcom/miniclip/framework/ThreadingContext;

    new-instance v1, Lcom/miniclip/notifications/MCNotification$2;

    invoke-direct {v1}, Lcom/miniclip/notifications/MCNotification$2;-><init>()V

    invoke-static {v0, v1}, Lcom/miniclip/framework/Miniclip;->queueEvent(Lcom/miniclip/framework/ThreadingContext;Ljava/lang/Runnable;)V

    .line 102
    return-void
.end method

.method public static signalReceivedPushNotification(Ljava/lang/String;)V
    .locals 2
    .param p0, "notificationJSON"    # Ljava/lang/String;

    .prologue
    .line 206
    sget-object v0, Lcom/miniclip/notifications/MCNotification;->activity:Landroid/app/Activity;

    if-nez v0, :cond_1

    .line 223
    :cond_0
    :goto_0
    return-void

    .line 209
    :cond_1
    sget-boolean v0, Lcom/miniclip/notifications/MCNotification;->isActive:Z

    if-eqz v0, :cond_0

    .line 213
    sget-object v0, Lcom/miniclip/framework/ThreadingContext;->Main:Lcom/miniclip/framework/ThreadingContext;

    new-instance v1, Lcom/miniclip/notifications/MCNotification$3;

    invoke-direct {v1, p0}, Lcom/miniclip/notifications/MCNotification$3;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/miniclip/framework/Miniclip;->queueEvent(Lcom/miniclip/framework/ThreadingContext;Ljava/lang/Runnable;)V

    .line 221
    invoke-static {}, Lcom/miniclip/notifications/MCNotification;->cancelAllCustomNotifications()V

    goto :goto_0
.end method
