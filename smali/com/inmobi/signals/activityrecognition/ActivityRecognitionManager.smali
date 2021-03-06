.class public Lcom/inmobi/signals/activityrecognition/ActivityRecognitionManager;
.super Landroid/app/IntentService;
.source "ActivityRecognitionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/signals/activityrecognition/ActivityRecognitionManager$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Ljava/lang/Object;

.field private static c:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 27
    const-class v0, Lcom/inmobi/signals/activityrecognition/ActivityRecognitionManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/signals/activityrecognition/ActivityRecognitionManager;->a:Ljava/lang/String;

    .line 33
    sput-object v1, Lcom/inmobi/signals/activityrecognition/ActivityRecognitionManager;->b:Ljava/lang/Object;

    .line 34
    sput-object v1, Lcom/inmobi/signals/activityrecognition/ActivityRecognitionManager;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    const-string v0, "Activity service"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method static a()V
    .locals 1

    .prologue
    .line 37
    invoke-static {}, Lcom/inmobi/signals/h;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/inmobi/signals/activityrecognition/ActivityRecognitionManager;->c:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 38
    invoke-static {}, Lcom/inmobi/commons/a/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    invoke-static {}, Lcom/inmobi/commons/a/a;->b()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/signals/activityrecognition/ActivityRecognitionManager;->a(Landroid/content/Context;)V

    .line 42
    :cond_0
    return-void
.end method

.method private static a(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 51
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/signals/activityrecognition/ActivityRecognitionManager;->a:Ljava/lang/String;

    const-string v2, "Connecting activity recognition manager."

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    new-instance v0, Lcom/inmobi/signals/activityrecognition/ActivityRecognitionManager$a;

    invoke-direct {v0, v3}, Lcom/inmobi/signals/activityrecognition/ActivityRecognitionManager$a;-><init>(Lcom/inmobi/signals/activityrecognition/ActivityRecognitionManager$1;)V

    new-instance v1, Lcom/inmobi/signals/activityrecognition/ActivityRecognitionManager$a;

    invoke-direct {v1, v3}, Lcom/inmobi/signals/activityrecognition/ActivityRecognitionManager$a;-><init>(Lcom/inmobi/signals/activityrecognition/ActivityRecognitionManager$1;)V

    const-string v2, "com.google.android.gms.location.ActivityRecognition"

    invoke-static {p0, v0, v1, v2}, Lcom/inmobi/signals/h;->a(Landroid/content/Context;Ljava/lang/reflect/InvocationHandler;Ljava/lang/reflect/InvocationHandler;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lcom/inmobi/signals/activityrecognition/ActivityRecognitionManager;->c:Ljava/lang/Object;

    .line 55
    sget-object v0, Lcom/inmobi/signals/activityrecognition/ActivityRecognitionManager;->c:Ljava/lang/Object;

    invoke-static {v0}, Lcom/inmobi/signals/h;->a(Ljava/lang/Object;)V

    .line 56
    return-void
.end method

.method private static a(Landroid/content/Intent;)V
    .locals 5

    .prologue
    .line 76
    :try_start_0
    const-string v0, "com.google.android.gms.location.ActivityRecognitionResult"

    .line 77
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 79
    const-string v0, "hasResult"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Intent;

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 81
    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 83
    if-eqz v0, :cond_0

    .line 84
    const-string v0, "extractResult"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Intent;

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 86
    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 87
    const-string v3, "getMostProbableActivity"

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Class;

    invoke-virtual {v1, v3, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 89
    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lcom/inmobi/signals/activityrecognition/ActivityRecognitionManager;->b:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    .line 104
    :cond_0
    :goto_0
    return-void

    .line 91
    :catch_0
    move-exception v0

    .line 92
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/signals/activityrecognition/ActivityRecognitionManager;->a:Ljava/lang/String;

    const-string v3, "HandleIntent: Google play services not included. Cannot get current activity."

    invoke-static {v1, v2, v3, v0}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 94
    :catch_1
    move-exception v0

    .line 95
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/signals/activityrecognition/ActivityRecognitionManager;->a:Ljava/lang/String;

    const-string v3, "HandleIntent: Google play services not included. Cannot get current activity."

    invoke-static {v1, v2, v3, v0}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 97
    :catch_2
    move-exception v0

    .line 98
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/signals/activityrecognition/ActivityRecognitionManager;->a:Ljava/lang/String;

    const-string v3, "HandleIntent: Google play services not included. Cannot get current activity."

    invoke-static {v1, v2, v3, v0}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 100
    :catch_3
    move-exception v0

    .line 101
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/signals/activityrecognition/ActivityRecognitionManager;->a:Ljava/lang/String;

    const-string v3, "HandleIntent: Google play services not included. Cannot get current activity."

    invoke-static {v1, v2, v3, v0}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static b()V
    .locals 1

    .prologue
    .line 45
    invoke-static {}, Lcom/inmobi/signals/h;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/inmobi/signals/activityrecognition/ActivityRecognitionManager;->c:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 46
    invoke-static {}, Lcom/inmobi/signals/activityrecognition/ActivityRecognitionManager;->f()V

    .line 48
    :cond_0
    return-void
.end method

.method public static c()I
    .locals 6

    .prologue
    .line 107
    const-string v0, "getType"

    .line 108
    const/4 v1, -0x1

    .line 110
    sget-object v0, Lcom/inmobi/signals/activityrecognition/ActivityRecognitionManager;->b:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 112
    :try_start_0
    const-string v0, "com.google.android.gms.location.DetectedActivity"

    .line 113
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 114
    const-string v3, "getType"

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 116
    sget-object v3, Lcom/inmobi/signals/activityrecognition/ActivityRecognitionManager;->b:Ljava/lang/Object;

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3

    move-result v0

    .line 117
    const/4 v1, 0x0

    :try_start_1
    sput-object v1, Lcom/inmobi/signals/activityrecognition/ActivityRecognitionManager;->b:Ljava/lang/Object;

    .line 118
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/signals/activityrecognition/ActivityRecognitionManager;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Getting detected activity:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_4

    .line 134
    :goto_0
    return v0

    .line 119
    :catch_0
    move-exception v0

    move-object v5, v0

    move v0, v1

    move-object v1, v5

    .line 120
    :goto_1
    sget-object v2, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v3, Lcom/inmobi/signals/activityrecognition/ActivityRecognitionManager;->a:Ljava/lang/String;

    const-string v4, "getDetectedActivity: Google play services not included. Returning null."

    invoke-static {v2, v3, v4, v1}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 122
    :catch_1
    move-exception v0

    move-object v5, v0

    move v0, v1

    move-object v1, v5

    .line 123
    :goto_2
    sget-object v2, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v3, Lcom/inmobi/signals/activityrecognition/ActivityRecognitionManager;->a:Ljava/lang/String;

    const-string v4, "getDetectedActivity: Google play services not included. Returning null."

    invoke-static {v2, v3, v4, v1}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 125
    :catch_2
    move-exception v0

    move-object v5, v0

    move v0, v1

    move-object v1, v5

    .line 126
    :goto_3
    sget-object v2, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v3, Lcom/inmobi/signals/activityrecognition/ActivityRecognitionManager;->a:Ljava/lang/String;

    const-string v4, "getDetectedActivity: Google play services not included. Returning null."

    invoke-static {v2, v3, v4, v1}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 128
    :catch_3
    move-exception v0

    move-object v5, v0

    move v0, v1

    move-object v1, v5

    .line 129
    :goto_4
    sget-object v2, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v3, Lcom/inmobi/signals/activityrecognition/ActivityRecognitionManager;->a:Ljava/lang/String;

    const-string v4, "getDetectedActivity: Google play services not included. Returning null."

    invoke-static {v2, v3, v4, v1}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 128
    :catch_4
    move-exception v1

    goto :goto_4

    .line 125
    :catch_5
    move-exception v1

    goto :goto_3

    .line 122
    :catch_6
    move-exception v1

    goto :goto_2

    .line 119
    :catch_7
    move-exception v1

    goto :goto_1

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method static synthetic d()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/inmobi/signals/activityrecognition/ActivityRecognitionManager;->c:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/inmobi/signals/activityrecognition/ActivityRecognitionManager;->a:Ljava/lang/String;

    return-object v0
.end method

.method private static f()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 59
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/signals/activityrecognition/ActivityRecognitionManager;->a:Ljava/lang/String;

    const-string v2, "Disconnecting activity recognition manager."

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    sget-object v0, Lcom/inmobi/signals/activityrecognition/ActivityRecognitionManager;->c:Ljava/lang/Object;

    invoke-static {v0}, Lcom/inmobi/signals/h;->b(Ljava/lang/Object;)V

    .line 62
    sput-object v3, Lcom/inmobi/signals/activityrecognition/ActivityRecognitionManager;->b:Ljava/lang/Object;

    .line 63
    sput-object v3, Lcom/inmobi/signals/activityrecognition/ActivityRecognitionManager;->c:Ljava/lang/Object;

    .line 64
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 68
    sget-object v0, Lcom/inmobi/signals/activityrecognition/ActivityRecognitionManager;->c:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 69
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/signals/activityrecognition/ActivityRecognitionManager;->a:Ljava/lang/String;

    const-string v2, "Got activity recognition intent."

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-static {p1}, Lcom/inmobi/signals/activityrecognition/ActivityRecognitionManager;->a(Landroid/content/Intent;)V

    .line 72
    :cond_0
    return-void
.end method
