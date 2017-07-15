.class public Lcom/miniclip/input/MCAccelerometer;
.super Lcom/miniclip/framework/AbstractActivityListener;
.source "MCAccelerometer.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# static fields
.field private static display:Landroid/view/Display;

.field private static instance:Lcom/miniclip/input/MCAccelerometer;

.field private static isEnabled:Z

.field private static isRegistered:Z

.field private static mAccelerometer:Landroid/hardware/Sensor;

.field private static mHasWindowFocus:Z

.field private static mResumeOnFocus:Z

.field private static mRotation:I

.field private static mSensorManager:Landroid/hardware/SensorManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 21
    new-instance v0, Lcom/miniclip/input/MCAccelerometer;

    invoke-direct {v0}, Lcom/miniclip/input/MCAccelerometer;-><init>()V

    sput-object v0, Lcom/miniclip/input/MCAccelerometer;->instance:Lcom/miniclip/input/MCAccelerometer;

    .line 25
    sput v1, Lcom/miniclip/input/MCAccelerometer;->mRotation:I

    .line 26
    const/4 v0, 0x0

    sput-object v0, Lcom/miniclip/input/MCAccelerometer;->display:Landroid/view/Display;

    .line 27
    sput-boolean v1, Lcom/miniclip/input/MCAccelerometer;->isEnabled:Z

    .line 28
    sput-boolean v1, Lcom/miniclip/input/MCAccelerometer;->isRegistered:Z

    .line 107
    sput-boolean v1, Lcom/miniclip/input/MCAccelerometer;->mHasWindowFocus:Z

    .line 108
    sput-boolean v1, Lcom/miniclip/input/MCAccelerometer;->mResumeOnFocus:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/miniclip/framework/AbstractActivityListener;-><init>()V

    return-void
.end method

.method public static init(Lcom/miniclip/framework/MiniclipAndroidActivity;)V
    .locals 4
    .param p0, "activity"    # Lcom/miniclip/framework/MiniclipAndroidActivity;

    .prologue
    const/4 v3, 0x1

    .line 35
    sput v3, Lcom/miniclip/input/MCAccelerometer;->mRotation:I

    .line 36
    const-string v2, "sensor"

    invoke-virtual {p0, v2}, Lcom/miniclip/framework/MiniclipAndroidActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/SensorManager;

    sput-object v2, Lcom/miniclip/input/MCAccelerometer;->mSensorManager:Landroid/hardware/SensorManager;

    .line 37
    sget-object v2, Lcom/miniclip/input/MCAccelerometer;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    sput-object v2, Lcom/miniclip/input/MCAccelerometer;->mAccelerometer:Landroid/hardware/Sensor;

    .line 38
    const-string v2, "window"

    invoke-virtual {p0, v2}, Lcom/miniclip/framework/MiniclipAndroidActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 40
    .local v1, "windowManager":Landroid/view/WindowManager;
    :try_start_0
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    sput-object v2, Lcom/miniclip/input/MCAccelerometer;->display:Landroid/view/Display;

    .line 41
    sget-object v2, Lcom/miniclip/input/MCAccelerometer;->display:Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v2

    sput v2, Lcom/miniclip/input/MCAccelerometer;->mRotation:I
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    :goto_0
    sget-object v2, Lcom/miniclip/input/MCAccelerometer;->instance:Lcom/miniclip/input/MCAccelerometer;

    invoke-virtual {p0, v2}, Lcom/miniclip/framework/MiniclipAndroidActivity;->addListener(Lcom/miniclip/framework/ActivityListener;)Z

    .line 48
    return-void

    .line 43
    :catch_0
    move-exception v0

    .line 44
    .local v0, "e":Ljava/lang/NoSuchMethodError;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodError;->printStackTrace()V

    goto :goto_0
.end method

.method private static native onSensorChanged(FFFJ)V
.end method

.method private register()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 60
    sget-boolean v0, Lcom/miniclip/input/MCAccelerometer;->isRegistered:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/miniclip/input/MCAccelerometer;->isEnabled:Z

    if-eqz v0, :cond_0

    .line 61
    sput-boolean v2, Lcom/miniclip/input/MCAccelerometer;->isRegistered:Z

    .line 62
    sget-object v0, Lcom/miniclip/input/MCAccelerometer;->mSensorManager:Landroid/hardware/SensorManager;

    sget-object v1, Lcom/miniclip/input/MCAccelerometer;->mAccelerometer:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 64
    :cond_0
    return-void
.end method

.method public static setEnabled(Z)V
    .locals 1
    .param p0, "enabled"    # Z

    .prologue
    .line 51
    sput-boolean p0, Lcom/miniclip/input/MCAccelerometer;->isEnabled:Z

    .line 52
    sget-boolean v0, Lcom/miniclip/input/MCAccelerometer;->isEnabled:Z

    if-eqz v0, :cond_0

    .line 53
    sget-object v0, Lcom/miniclip/input/MCAccelerometer;->instance:Lcom/miniclip/input/MCAccelerometer;

    invoke-direct {v0}, Lcom/miniclip/input/MCAccelerometer;->register()V

    .line 57
    :goto_0
    return-void

    .line 55
    :cond_0
    sget-object v0, Lcom/miniclip/input/MCAccelerometer;->instance:Lcom/miniclip/input/MCAccelerometer;

    invoke-direct {v0}, Lcom/miniclip/input/MCAccelerometer;->unregister()V

    goto :goto_0
.end method

.method private unregister()V
    .locals 1

    .prologue
    .line 67
    sget-boolean v0, Lcom/miniclip/input/MCAccelerometer;->isRegistered:Z

    if-eqz v0, :cond_0

    .line 68
    const/4 v0, 0x0

    sput-boolean v0, Lcom/miniclip/input/MCAccelerometer;->isRegistered:Z

    .line 69
    sget-object v0, Lcom/miniclip/input/MCAccelerometer;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 71
    :cond_0
    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 105
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/miniclip/input/MCAccelerometer;->unregister()V

    .line 113
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 126
    sget-boolean v0, Lcom/miniclip/input/MCAccelerometer;->mHasWindowFocus:Z

    if-eqz v0, :cond_0

    .line 127
    const/4 v0, 0x0

    sput-boolean v0, Lcom/miniclip/input/MCAccelerometer;->mResumeOnFocus:Z

    .line 128
    invoke-direct {p0}, Lcom/miniclip/input/MCAccelerometer;->register()V

    .line 133
    :goto_0
    return-void

    .line 131
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/miniclip/input/MCAccelerometer;->mResumeOnFocus:Z

    goto :goto_0
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 6
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 75
    iget-object v1, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v1

    if-eq v1, v3, :cond_1

    .line 102
    :cond_0
    :goto_0
    return-void

    .line 88
    :cond_1
    :try_start_0
    sget-object v1, Lcom/miniclip/input/MCAccelerometer;->display:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    sput v1, Lcom/miniclip/input/MCAccelerometer;->mRotation:I
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    :goto_1
    sget v1, Lcom/miniclip/input/MCAccelerometer;->mRotation:I

    if-nez v1, :cond_2

    .line 95
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v5

    neg-float v1, v1

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v3

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v4

    iget-wide v4, p1, Landroid/hardware/SensorEvent;->timestamp:J

    invoke-static {v1, v2, v3, v4, v5}, Lcom/miniclip/input/MCAccelerometer;->onSensorChanged(FFFJ)V

    goto :goto_0

    .line 90
    :catch_0
    move-exception v0

    .line 91
    .local v0, "e":Ljava/lang/NoSuchMethodError;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodError;->printStackTrace()V

    goto :goto_1

    .line 96
    .end local v0    # "e":Ljava/lang/NoSuchMethodError;
    :cond_2
    sget v1, Lcom/miniclip/input/MCAccelerometer;->mRotation:I

    if-ne v1, v4, :cond_3

    .line 97
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v5

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v3

    neg-float v2, v2

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v4

    iget-wide v4, p1, Landroid/hardware/SensorEvent;->timestamp:J

    invoke-static {v1, v2, v3, v4, v5}, Lcom/miniclip/input/MCAccelerometer;->onSensorChanged(FFFJ)V

    goto :goto_0

    .line 98
    :cond_3
    sget v1, Lcom/miniclip/input/MCAccelerometer;->mRotation:I

    if-ne v1, v3, :cond_4

    .line 99
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v3

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v5

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v4

    iget-wide v4, p1, Landroid/hardware/SensorEvent;->timestamp:J

    invoke-static {v1, v2, v3, v4, v5}, Lcom/miniclip/input/MCAccelerometer;->onSensorChanged(FFFJ)V

    goto :goto_0

    .line 100
    :cond_4
    sget v1, Lcom/miniclip/input/MCAccelerometer;->mRotation:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 101
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v3

    neg-float v1, v1

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v5

    neg-float v2, v2

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v4

    iget-wide v4, p1, Landroid/hardware/SensorEvent;->timestamp:J

    invoke-static {v1, v2, v3, v4, v5}, Lcom/miniclip/input/MCAccelerometer;->onSensorChanged(FFFJ)V

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 117
    sput-boolean p1, Lcom/miniclip/input/MCAccelerometer;->mHasWindowFocus:Z

    .line 118
    sget-boolean v0, Lcom/miniclip/input/MCAccelerometer;->mHasWindowFocus:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/miniclip/input/MCAccelerometer;->mResumeOnFocus:Z

    if-eqz v0, :cond_0

    .line 119
    const/4 v0, 0x0

    sput-boolean v0, Lcom/miniclip/input/MCAccelerometer;->mResumeOnFocus:Z

    .line 120
    invoke-direct {p0}, Lcom/miniclip/input/MCAccelerometer;->register()V

    .line 122
    :cond_0
    return-void
.end method
