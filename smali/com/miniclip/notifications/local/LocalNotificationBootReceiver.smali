.class public Lcom/miniclip/notifications/local/LocalNotificationBootReceiver;
.super Landroid/content/BroadcastReceiver;
.source "LocalNotificationBootReceiver.java"


# static fields
.field private static NotificationBigContentTitle:Ljava/lang/String;

.field private static NotificationGroupID:Ljava/lang/String;

.field private static NotificationId:Ljava/lang/String;

.field private static NotificationPayload:Ljava/lang/String;

.field private static NotificationPriority:Ljava/lang/String;

.field private static NotificationSummary:Ljava/lang/String;

.field private static NotificationText:Ljava/lang/String;

.field private static NotificationTime:Ljava/lang/String;

.field private static NotificationTitle:Ljava/lang/String;

.field private static NotificationType:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/miniclip/notifications/local/LocalNotificationBootReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miniclip/notifications/local/LocalNotificationBootReceiver;->TAG:Ljava/lang/String;

    .line 31
    const-string v0, "miniclip.Notification.Id"

    sput-object v0, Lcom/miniclip/notifications/local/LocalNotificationBootReceiver;->NotificationId:Ljava/lang/String;

    .line 32
    const-string v0, "miniclip.Notification.Payload"

    sput-object v0, Lcom/miniclip/notifications/local/LocalNotificationBootReceiver;->NotificationPayload:Ljava/lang/String;

    .line 33
    const-string v0, "miniclip.Notification.Type"

    sput-object v0, Lcom/miniclip/notifications/local/LocalNotificationBootReceiver;->NotificationType:Ljava/lang/String;

    .line 34
    const-string v0, "miniclip.Notification.Title"

    sput-object v0, Lcom/miniclip/notifications/local/LocalNotificationBootReceiver;->NotificationTitle:Ljava/lang/String;

    .line 35
    const-string v0, "miniclip.Notification.Text"

    sput-object v0, Lcom/miniclip/notifications/local/LocalNotificationBootReceiver;->NotificationText:Ljava/lang/String;

    .line 36
    const-string v0, "miniclip.Notification.Time"

    sput-object v0, Lcom/miniclip/notifications/local/LocalNotificationBootReceiver;->NotificationTime:Ljava/lang/String;

    .line 37
    const-string v0, "miniclip.Nottification.GroupID"

    sput-object v0, Lcom/miniclip/notifications/local/LocalNotificationBootReceiver;->NotificationGroupID:Ljava/lang/String;

    .line 38
    const-string v0, "miniclip.Notification.BigContentTitle"

    sput-object v0, Lcom/miniclip/notifications/local/LocalNotificationBootReceiver;->NotificationBigContentTitle:Ljava/lang/String;

    .line 39
    const-string v0, "miniclip.Notification.Summary"

    sput-object v0, Lcom/miniclip/notifications/local/LocalNotificationBootReceiver;->NotificationSummary:Ljava/lang/String;

    .line 40
    const-string v0, "miniclip.Notification.Priority"

    sput-object v0, Lcom/miniclip/notifications/local/LocalNotificationBootReceiver;->NotificationPriority:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static removeAlarm(Landroid/content/Context;I)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "nid"    # I

    .prologue
    .line 306
    const-string v5, "Notifications"

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 308
    .local v4, "preferences":Landroid/content/SharedPreferences;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 325
    :goto_0
    return-void

    .line 311
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-class v5, Lcom/miniclip/notifications/local/LocalNotificationBootReceiver;

    invoke-direct {v1, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 312
    .local v1, "intent":Landroid/content/Intent;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 314
    sget-object v5, Lcom/miniclip/notifications/local/LocalNotificationBootReceiver;->NotificationId:Ljava/lang/String;

    invoke-virtual {v1, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 316
    const/high16 v5, 0x8000000

    invoke-static {p0, p1, v1, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 318
    .local v3, "pendingIntent":Landroid/app/PendingIntent;
    const-string v5, "alarm"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 319
    .local v0, "am":Landroid/app/AlarmManager;
    invoke-virtual {v0, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 321
    const-string v5, "notification"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 322
    .local v2, "notificationManager":Landroid/app/NotificationManager;
    invoke-virtual {v2, p1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 324
    invoke-static {p0, p1}, Lcom/miniclip/notifications/local/LocalNotificationBootReceiver;->removeScheduledNotification(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method public static removeAllAlarms(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 329
    const-string v4, "Notifications"

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 331
    .local v3, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 335
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    :try_start_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 336
    .local v1, "nid":I
    invoke-static {p0, v1}, Lcom/miniclip/notifications/local/LocalNotificationBootReceiver;->removeAlarm(Landroid/content/Context;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 338
    .end local v1    # "nid":I
    :catch_0
    move-exception v4

    goto :goto_0

    .line 343
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    :cond_0
    const-string v4, "notification"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 344
    .local v2, "notificationManager":Landroid/app/NotificationManager;
    invoke-virtual {v2}, Landroid/app/NotificationManager;->cancelAll()V

    .line 345
    return-void
.end method

.method public static removeScheduledNotification(Landroid/content/Context;I)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "nid"    # I

    .prologue
    .line 249
    const-string v2, "Notifications"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 251
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 253
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 255
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 257
    invoke-static {p1}, Lcom/miniclip/notifications/MCNotificationCompatManager;->removeNotification(I)V

    .line 258
    return-void
.end method

.method public static saveScheduledNotification(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "nid"    # I
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "text"    # Ljava/lang/String;
    .param p5, "time"    # J
    .param p7, "payload"    # Ljava/lang/String;
    .param p8, "groupID"    # Ljava/lang/String;
    .param p9, "bigContentTitle"    # Ljava/lang/String;
    .param p10, "summary"    # Ljava/lang/String;
    .param p11, "priority"    # I

    .prologue
    .line 224
    :try_start_0
    const-string v4, "Notifications"

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 226
    .local v3, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 228
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 230
    .local v2, "jObject":Lorg/json/JSONObject;
    sget-object v4, Lcom/miniclip/notifications/local/LocalNotificationBootReceiver;->NotificationType:Ljava/lang/String;

    invoke-virtual {v2, v4, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 231
    sget-object v4, Lcom/miniclip/notifications/local/LocalNotificationBootReceiver;->NotificationTitle:Ljava/lang/String;

    invoke-virtual {v2, v4, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 232
    sget-object v4, Lcom/miniclip/notifications/local/LocalNotificationBootReceiver;->NotificationText:Ljava/lang/String;

    invoke-virtual {v2, v4, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 233
    sget-object v4, Lcom/miniclip/notifications/local/LocalNotificationBootReceiver;->NotificationPayload:Ljava/lang/String;

    invoke-virtual {v2, v4, p7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 234
    sget-object v4, Lcom/miniclip/notifications/local/LocalNotificationBootReceiver;->NotificationTime:Ljava/lang/String;

    invoke-virtual {v2, v4, p5, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 235
    sget-object v4, Lcom/miniclip/notifications/local/LocalNotificationBootReceiver;->NotificationGroupID:Ljava/lang/String;

    invoke-virtual {v2, v4, p8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 236
    sget-object v4, Lcom/miniclip/notifications/local/LocalNotificationBootReceiver;->NotificationBigContentTitle:Ljava/lang/String;

    move-object/from16 v0, p9

    invoke-virtual {v2, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 237
    sget-object v4, Lcom/miniclip/notifications/local/LocalNotificationBootReceiver;->NotificationSummary:Ljava/lang/String;

    move-object/from16 v0, p10

    invoke-virtual {v2, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 238
    sget-object v4, Lcom/miniclip/notifications/local/LocalNotificationBootReceiver;->NotificationPriority:Ljava/lang/String;

    move/from16 v0, p11

    invoke-virtual {v2, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 240
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 242
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "jObject":Lorg/json/JSONObject;
    .end local v3    # "preferences":Landroid/content/SharedPreferences;
    :goto_0
    return-void

    .line 244
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public static setupAlarm(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 17
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "nid"    # I
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "text"    # Ljava/lang/String;
    .param p5, "seconds"    # I
    .param p6, "payload"    # Ljava/lang/String;
    .param p7, "groupID"    # Ljava/lang/String;
    .param p8, "bigContentTitle"    # Ljava/lang/String;
    .param p9, "summary"    # Ljava/lang/String;
    .param p10, "priority"    # I

    .prologue
    .line 271
    :try_start_0
    new-instance v15, Landroid/content/Intent;

    const-class v3, Lcom/miniclip/notifications/local/LocalNotificationBootReceiver;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 272
    .local v15, "intent":Landroid/content/Intent;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 274
    sget-object v3, Lcom/miniclip/notifications/local/LocalNotificationBootReceiver;->NotificationType:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v15, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 275
    sget-object v3, Lcom/miniclip/notifications/local/LocalNotificationBootReceiver;->NotificationId:Ljava/lang/String;

    move/from16 v0, p1

    invoke-virtual {v15, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 276
    sget-object v3, Lcom/miniclip/notifications/local/LocalNotificationBootReceiver;->NotificationPayload:Ljava/lang/String;

    move-object/from16 v0, p6

    invoke-virtual {v15, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 277
    sget-object v3, Lcom/miniclip/notifications/local/LocalNotificationBootReceiver;->NotificationTitle:Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-virtual {v15, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 278
    sget-object v3, Lcom/miniclip/notifications/local/LocalNotificationBootReceiver;->NotificationText:Ljava/lang/String;

    move-object/from16 v0, p4

    invoke-virtual {v15, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 279
    sget-object v3, Lcom/miniclip/notifications/local/LocalNotificationBootReceiver;->NotificationGroupID:Ljava/lang/String;

    move-object/from16 v0, p7

    invoke-virtual {v15, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 280
    sget-object v3, Lcom/miniclip/notifications/local/LocalNotificationBootReceiver;->NotificationBigContentTitle:Ljava/lang/String;

    move-object/from16 v0, p8

    invoke-virtual {v15, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 281
    sget-object v3, Lcom/miniclip/notifications/local/LocalNotificationBootReceiver;->NotificationSummary:Ljava/lang/String;

    move-object/from16 v0, p9

    invoke-virtual {v15, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 282
    sget-object v3, Lcom/miniclip/notifications/local/LocalNotificationBootReceiver;->NotificationPriority:Ljava/lang/String;

    move/from16 v0, p10

    invoke-virtual {v15, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 286
    invoke-static/range {p0 .. p1}, Lcom/miniclip/notifications/local/LocalNotificationBootReceiver;->removeAlarm(Landroid/content/Context;I)V

    .line 290
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move/from16 v0, p5

    int-to-long v6, v0

    const-wide/16 v10, 0x3e8

    mul-long/2addr v6, v10

    add-long v8, v4, v6

    .local v8, "time":J
    move-object/from16 v3, p0

    move/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    move-object/from16 v12, p8

    move-object/from16 v13, p9

    move/from16 v14, p10

    .line 292
    invoke-static/range {v3 .. v14}, Lcom/miniclip/notifications/local/LocalNotificationBootReceiver;->saveScheduledNotification(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 296
    const/high16 v3, 0x8000000

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-static {v0, v1, v15, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v16

    .line 298
    .local v16, "pendingIntent":Landroid/app/PendingIntent;
    const-string v3, "alarm"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    .line 299
    .local v2, "am":Landroid/app/AlarmManager;
    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v2, v3, v8, v9, v0}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 302
    .end local v2    # "am":Landroid/app/AlarmManager;
    .end local v8    # "time":J
    .end local v15    # "intent":Landroid/content/Intent;
    .end local v16    # "pendingIntent":Landroid/app/PendingIntent;
    :goto_0
    return-void

    .line 301
    :catch_0
    move-exception v3

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 56
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "notificationIntent"    # Landroid/content/Intent;

    .prologue
    .line 45
    if-nez p2, :cond_1

    .line 218
    :cond_0
    :goto_0
    return-void

    .line 50
    :cond_1
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v30

    .line 52
    .local v30, "action":Ljava/lang/String;
    const-string v4, "Notifications"

    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v12}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v51

    .line 54
    .local v51, "preferences":Landroid/content/SharedPreferences;
    if-eqz v30, :cond_2

    const-string v4, "android.intent.action.BOOT_COMPLETED"

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 56
    :cond_2
    sget-object v4, Lcom/miniclip/notifications/local/LocalNotificationBootReceiver;->NotificationId:Ljava/lang/String;

    const/4 v12, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 57
    .local v5, "nid":I
    sget-object v4, Lcom/miniclip/notifications/local/LocalNotificationBootReceiver;->NotificationPayload:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 58
    .local v24, "payload":Ljava/lang/String;
    sget-object v4, Lcom/miniclip/notifications/local/LocalNotificationBootReceiver;->NotificationType:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 59
    .local v20, "type":Ljava/lang/String;
    sget-object v4, Lcom/miniclip/notifications/local/LocalNotificationBootReceiver;->NotificationTitle:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 60
    .local v7, "title":Ljava/lang/String;
    sget-object v4, Lcom/miniclip/notifications/local/LocalNotificationBootReceiver;->NotificationText:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 61
    .local v8, "text":Ljava/lang/String;
    sget-object v4, Lcom/miniclip/notifications/local/LocalNotificationBootReceiver;->NotificationGroupID:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 62
    .local v6, "groupID":Ljava/lang/String;
    sget-object v4, Lcom/miniclip/notifications/local/LocalNotificationBootReceiver;->NotificationBigContentTitle:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 63
    .local v10, "bigContentTitle":Ljava/lang/String;
    sget-object v4, Lcom/miniclip/notifications/local/LocalNotificationBootReceiver;->NotificationSummary:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 64
    .local v11, "summary":Ljava/lang/String;
    sget-object v4, Lcom/miniclip/notifications/local/LocalNotificationBootReceiver;->NotificationPriority:Ljava/lang/String;

    const/4 v12, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v16

    .line 66
    .local v16, "priority":I
    if-eqz v7, :cond_0

    if-eqz v8, :cond_0

    .line 73
    const-string v4, "GAME_INFO"

    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v12}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v52

    .line 74
    .local v52, "prefs":Landroid/content/SharedPreferences;
    const-string v4, "NOTIFICATION_STACKING_INFO"

    const-string v12, ""

    move-object/from16 v0, v52

    invoke-interface {v0, v4, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v49

    .line 76
    .local v49, "notificationsStackingInfo":Ljava/lang/String;
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 79
    .local v17, "actions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/app/NotificationCompat$Action;>;"
    :try_start_1
    const-string v4, ""

    move-object/from16 v0, v49

    if-eq v0, v4, :cond_6

    .line 80
    new-instance v42, Lorg/json/JSONObject;

    move-object/from16 v0, v42

    move-object/from16 v1, v49

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 81
    .local v42, "json":Lorg/json/JSONObject;
    move-object/from16 v0, v42

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v46

    .line 83
    .local v46, "notificationJson":Lorg/json/JSONObject;
    const-string v4, "notificationActions"

    move-object/from16 v0, v46

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 84
    const-string v4, "notificationActions"

    move-object/from16 v0, v46

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v34

    .line 85
    .local v34, "actionsJSON":Lorg/json/JSONObject;
    const-string v4, "notificationActions"

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v40

    .line 87
    .local v40, "jArray":Lorg/json/JSONArray;
    const/16 v38, 0x0

    .local v38, "i":I
    :goto_1
    invoke-virtual/range {v40 .. v40}, Lorg/json/JSONArray;->length()I

    move-result v4

    move/from16 v0, v38

    if-ge v0, v4, :cond_6

    .line 89
    move-object/from16 v0, v40

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lorg/json/JSONObject;

    .line 90
    .local v31, "actionJson":Lorg/json/JSONObject;
    const-string v33, ""

    .line 91
    .local v33, "actionTitle":Ljava/lang/String;
    const-string v32, ""

    .line 93
    .local v32, "actionName":Ljava/lang/String;
    const-string v4, "title"

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 94
    const-string v4, "title"

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 96
    :cond_3
    const-string v4, "actionName"

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 97
    const-string v4, "actionName"

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 100
    :cond_4
    new-instance v35, Lorg/json/JSONObject;

    invoke-direct/range {v35 .. v35}, Lorg/json/JSONObject;-><init>()V

    .line 101
    .local v35, "base_dict":Lorg/json/JSONObject;
    const-string v4, "choice"

    move-object/from16 v0, v35

    move-object/from16 v1, v32

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 104
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v44

    .line 105
    .local v44, "mIntent":Landroid/content/Intent;
    const/high16 v4, 0x20000000

    move-object/from16 v0, v44

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 106
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "com.miniclip."

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v44

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 108
    invoke-virtual/range {v35 .. v35}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v43

    .line 109
    .local v43, "jsonString":Ljava/lang/String;
    const-string v4, "localNotification"

    move-object/from16 v0, v44

    move-object/from16 v1, v43

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 111
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/high16 v12, 0x8000000

    move-object/from16 v0, p1

    move-object/from16 v1, v44

    invoke-static {v0, v4, v1, v12}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v50

    .line 113
    .local v50, "pIntent":Landroid/app/PendingIntent;
    const/4 v9, 0x0

    .line 114
    .local v9, "resourceId":I
    const-string v4, "imageName"

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 115
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v12, "imageName"

    move-object/from16 v0, v31

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "drawable"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v12, v13, v14}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 118
    :cond_5
    new-instance v29, Landroid/support/v4/app/NotificationCompat$Action;

    move-object/from16 v0, v29

    move-object/from16 v1, v33

    move-object/from16 v2, v50

    invoke-direct {v0, v9, v1, v2}, Landroid/support/v4/app/NotificationCompat$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 120
    .local v29, "act":Landroid/support/v4/app/NotificationCompat$Action;
    move-object/from16 v0, v17

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 87
    add-int/lit8 v38, v38, 0x1

    goto/16 :goto_1

    .line 124
    .end local v9    # "resourceId":I
    .end local v29    # "act":Landroid/support/v4/app/NotificationCompat$Action;
    .end local v31    # "actionJson":Lorg/json/JSONObject;
    .end local v32    # "actionName":Ljava/lang/String;
    .end local v33    # "actionTitle":Ljava/lang/String;
    .end local v34    # "actionsJSON":Lorg/json/JSONObject;
    .end local v35    # "base_dict":Lorg/json/JSONObject;
    .end local v38    # "i":I
    .end local v40    # "jArray":Lorg/json/JSONArray;
    .end local v42    # "json":Lorg/json/JSONObject;
    .end local v43    # "jsonString":Ljava/lang/String;
    .end local v44    # "mIntent":Landroid/content/Intent;
    .end local v46    # "notificationJson":Lorg/json/JSONObject;
    .end local v50    # "pIntent":Landroid/app/PendingIntent;
    :catch_0
    move-exception v36

    .line 126
    .local v36, "e":Lorg/json/JSONException;
    :try_start_2
    invoke-virtual/range {v36 .. v36}, Lorg/json/JSONException;->printStackTrace()V

    .line 130
    .end local v36    # "e":Lorg/json/JSONException;
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v39

    .line 132
    .local v39, "intent":Landroid/content/Intent;
    const/high16 v4, 0x20000000

    move-object/from16 v0, v39

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 133
    move-object/from16 v0, v39

    invoke-virtual {v0, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 135
    if-eqz v24, :cond_7

    .line 137
    const-string v4, "localNotification"

    move-object/from16 v0, v39

    move-object/from16 v1, v24

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 142
    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v12, "icon_notification"

    const-string v13, "drawable"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v12, v13, v14}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 143
    .restart local v9    # "resourceId":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    const/4 v4, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v39

    invoke-static {v0, v5, v1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v14

    const/4 v15, 0x1

    move-object/from16 v4, p1

    invoke-static/range {v4 .. v17}, Lcom/miniclip/notifications/MCNotificationCompatManager;->createNotification(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JLandroid/app/PendingIntent;ZILjava/util/List;)Landroid/app/Notification;

    move-result-object v45

    .line 144
    .local v45, "notification":Landroid/app/Notification;
    move-object/from16 v0, v45

    iget v4, v0, Landroid/app/Notification;->defaults:I

    or-int/lit8 v4, v4, 0x4

    move-object/from16 v0, v45

    iput v4, v0, Landroid/app/Notification;->defaults:I

    .line 148
    sget-object v4, Lcom/miniclip/notifications/local/LocalNotificationBootReceiver;->TAG:Ljava/lang/String;

    const-string v12, "getting notificationmaanger"

    invoke-static {v4, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    const-string v4, "notification"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Landroid/app/NotificationManager;

    .line 153
    .local v47, "notificationManager":Landroid/app/NotificationManager;
    invoke-static {v6}, Lcom/miniclip/notifications/MCNotificationCompatManager;->isNotificationStackable(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v48

    .line 156
    .local v48, "notificationTag":I
    :goto_2
    move-object/from16 v0, v47

    move/from16 v1, v48

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 158
    move-object/from16 v0, p1

    invoke-static {v0, v5}, Lcom/miniclip/notifications/local/LocalNotificationBootReceiver;->removeScheduledNotification(Landroid/content/Context;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 213
    .end local v5    # "nid":I
    .end local v6    # "groupID":Ljava/lang/String;
    .end local v7    # "title":Ljava/lang/String;
    .end local v8    # "text":Ljava/lang/String;
    .end local v9    # "resourceId":I
    .end local v10    # "bigContentTitle":Ljava/lang/String;
    .end local v11    # "summary":Ljava/lang/String;
    .end local v16    # "priority":I
    .end local v17    # "actions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/app/NotificationCompat$Action;>;"
    .end local v20    # "type":Ljava/lang/String;
    .end local v24    # "payload":Ljava/lang/String;
    .end local v30    # "action":Ljava/lang/String;
    .end local v39    # "intent":Landroid/content/Intent;
    .end local v45    # "notification":Landroid/app/Notification;
    .end local v47    # "notificationManager":Landroid/app/NotificationManager;
    .end local v48    # "notificationTag":I
    .end local v49    # "notificationsStackingInfo":Ljava/lang/String;
    .end local v51    # "preferences":Landroid/content/SharedPreferences;
    .end local v52    # "prefs":Landroid/content/SharedPreferences;
    :catch_1
    move-exception v36

    .line 215
    .local v36, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/miniclip/notifications/local/LocalNotificationBootReceiver;->TAG:Ljava/lang/String;

    const-string v12, "An alarm was received but there was an error"

    invoke-static {v4, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    invoke-virtual/range {v36 .. v36}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .end local v36    # "e":Ljava/lang/Exception;
    .restart local v5    # "nid":I
    .restart local v6    # "groupID":Ljava/lang/String;
    .restart local v7    # "title":Ljava/lang/String;
    .restart local v8    # "text":Ljava/lang/String;
    .restart local v9    # "resourceId":I
    .restart local v10    # "bigContentTitle":Ljava/lang/String;
    .restart local v11    # "summary":Ljava/lang/String;
    .restart local v16    # "priority":I
    .restart local v17    # "actions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/app/NotificationCompat$Action;>;"
    .restart local v20    # "type":Ljava/lang/String;
    .restart local v24    # "payload":Ljava/lang/String;
    .restart local v30    # "action":Ljava/lang/String;
    .restart local v39    # "intent":Landroid/content/Intent;
    .restart local v45    # "notification":Landroid/app/Notification;
    .restart local v47    # "notificationManager":Landroid/app/NotificationManager;
    .restart local v49    # "notificationsStackingInfo":Ljava/lang/String;
    .restart local v51    # "preferences":Landroid/content/SharedPreferences;
    .restart local v52    # "prefs":Landroid/content/SharedPreferences;
    :cond_8
    move/from16 v48, v5

    .line 153
    goto :goto_2

    .line 165
    .end local v5    # "nid":I
    .end local v6    # "groupID":Ljava/lang/String;
    .end local v7    # "title":Ljava/lang/String;
    .end local v8    # "text":Ljava/lang/String;
    .end local v9    # "resourceId":I
    .end local v10    # "bigContentTitle":Ljava/lang/String;
    .end local v11    # "summary":Ljava/lang/String;
    .end local v16    # "priority":I
    .end local v17    # "actions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/app/NotificationCompat$Action;>;"
    .end local v20    # "type":Ljava/lang/String;
    .end local v24    # "payload":Ljava/lang/String;
    .end local v39    # "intent":Landroid/content/Intent;
    .end local v45    # "notification":Landroid/app/Notification;
    .end local v47    # "notificationManager":Landroid/app/NotificationManager;
    .end local v49    # "notificationsStackingInfo":Ljava/lang/String;
    .end local v52    # "prefs":Landroid/content/SharedPreferences;
    :cond_9
    :try_start_3
    sget-object v4, Lcom/miniclip/notifications/local/LocalNotificationBootReceiver;->TAG:Ljava/lang/String;

    const-string v12, "actionisnull"

    invoke-static {v4, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    invoke-interface/range {v51 .. v51}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Ljava/util/Map$Entry;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 172
    .local v37, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    :try_start_4
    invoke-interface/range {v37 .. v37}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Ljava/lang/String;

    .line 174
    .local v42, "json":Ljava/lang/String;
    new-instance v41, Lorg/json/JSONObject;

    invoke-direct/range {v41 .. v42}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 176
    .local v41, "jObject":Lorg/json/JSONObject;
    sget-object v12, Lcom/miniclip/notifications/local/LocalNotificationBootReceiver;->NotificationType:Ljava/lang/String;

    move-object/from16 v0, v41

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 177
    .restart local v20    # "type":Ljava/lang/String;
    sget-object v12, Lcom/miniclip/notifications/local/LocalNotificationBootReceiver;->NotificationTitle:Ljava/lang/String;

    move-object/from16 v0, v41

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 178
    .restart local v7    # "title":Ljava/lang/String;
    sget-object v12, Lcom/miniclip/notifications/local/LocalNotificationBootReceiver;->NotificationText:Ljava/lang/String;

    move-object/from16 v0, v41

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 179
    .restart local v8    # "text":Ljava/lang/String;
    sget-object v12, Lcom/miniclip/notifications/local/LocalNotificationBootReceiver;->NotificationPayload:Ljava/lang/String;

    move-object/from16 v0, v41

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 181
    .restart local v24    # "payload":Ljava/lang/String;
    const-string v6, ""

    .line 182
    .restart local v6    # "groupID":Ljava/lang/String;
    sget-object v12, Lcom/miniclip/notifications/local/LocalNotificationBootReceiver;->NotificationGroupID:Ljava/lang/String;

    move-object/from16 v0, v41

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 183
    sget-object v12, Lcom/miniclip/notifications/local/LocalNotificationBootReceiver;->NotificationGroupID:Ljava/lang/String;

    move-object/from16 v0, v41

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 185
    :cond_a
    move-object v10, v7

    .line 186
    .restart local v10    # "bigContentTitle":Ljava/lang/String;
    sget-object v12, Lcom/miniclip/notifications/local/LocalNotificationBootReceiver;->NotificationBigContentTitle:Ljava/lang/String;

    move-object/from16 v0, v41

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 187
    sget-object v12, Lcom/miniclip/notifications/local/LocalNotificationBootReceiver;->NotificationBigContentTitle:Ljava/lang/String;

    move-object/from16 v0, v41

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 189
    :cond_b
    move-object v11, v8

    .line 190
    .restart local v11    # "summary":Ljava/lang/String;
    sget-object v12, Lcom/miniclip/notifications/local/LocalNotificationBootReceiver;->NotificationSummary:Ljava/lang/String;

    move-object/from16 v0, v41

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_c

    .line 191
    sget-object v12, Lcom/miniclip/notifications/local/LocalNotificationBootReceiver;->NotificationSummary:Ljava/lang/String;

    move-object/from16 v0, v41

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 194
    :cond_c
    sget-object v12, Lcom/miniclip/notifications/local/LocalNotificationBootReceiver;->NotificationTime:Ljava/lang/String;

    move-object/from16 v0, v41

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v54

    .line 196
    .local v54, "time":J
    const/16 v16, 0x0

    .line 197
    .restart local v16    # "priority":I
    sget-object v12, Lcom/miniclip/notifications/local/LocalNotificationBootReceiver;->NotificationPriority:Ljava/lang/String;

    move-object/from16 v0, v41

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_d

    .line 198
    sget-object v12, Lcom/miniclip/notifications/local/LocalNotificationBootReceiver;->NotificationPriority:Ljava/lang/String;

    move-object/from16 v0, v41

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v16

    .line 200
    :cond_d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long v12, v54, v12

    long-to-int v12, v12

    div-int/lit16 v0, v12, 0x3e8

    move/from16 v23, v0

    .line 202
    .local v23, "seconds":I
    invoke-static {v6}, Lcom/miniclip/notifications/MCNotificationCompatManager;->isNotificationStackable(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_e

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v5

    .line 205
    .restart local v5    # "nid":I
    :goto_4
    if-ltz v23, :cond_f

    move-object/from16 v18, p1

    move/from16 v19, v5

    move-object/from16 v21, v7

    move-object/from16 v22, v8

    move-object/from16 v25, v6

    move-object/from16 v26, v10

    move-object/from16 v27, v11

    move/from16 v28, v16

    .line 206
    invoke-static/range {v18 .. v28}, Lcom/miniclip/notifications/local/LocalNotificationBootReceiver;->setupAlarm(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_3

    .line 209
    .end local v5    # "nid":I
    .end local v6    # "groupID":Ljava/lang/String;
    .end local v7    # "title":Ljava/lang/String;
    .end local v8    # "text":Ljava/lang/String;
    .end local v10    # "bigContentTitle":Ljava/lang/String;
    .end local v11    # "summary":Ljava/lang/String;
    .end local v16    # "priority":I
    .end local v20    # "type":Ljava/lang/String;
    .end local v23    # "seconds":I
    .end local v24    # "payload":Ljava/lang/String;
    .end local v41    # "jObject":Lorg/json/JSONObject;
    .end local v42    # "json":Ljava/lang/String;
    .end local v54    # "time":J
    :catch_2
    move-exception v12

    goto/16 :goto_3

    .line 202
    .restart local v6    # "groupID":Ljava/lang/String;
    .restart local v7    # "title":Ljava/lang/String;
    .restart local v8    # "text":Ljava/lang/String;
    .restart local v10    # "bigContentTitle":Ljava/lang/String;
    .restart local v11    # "summary":Ljava/lang/String;
    .restart local v16    # "priority":I
    .restart local v20    # "type":Ljava/lang/String;
    .restart local v23    # "seconds":I
    .restart local v24    # "payload":Ljava/lang/String;
    .restart local v41    # "jObject":Lorg/json/JSONObject;
    .restart local v42    # "json":Ljava/lang/String;
    .restart local v54    # "time":J
    :cond_e
    new-instance v12, Ljava/util/Random;

    invoke-direct {v12}, Ljava/util/Random;-><init>()V

    invoke-virtual {v12}, Ljava/util/Random;->nextInt()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v12

    mul-int/lit8 v5, v12, -0x1

    goto :goto_4

    .line 207
    .restart local v5    # "nid":I
    :cond_f
    move-object/from16 v0, p1

    invoke-static {v0, v5}, Lcom/miniclip/notifications/local/LocalNotificationBootReceiver;->removeScheduledNotification(Landroid/content/Context;I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_3
.end method
