.class public Lcom/miniclip/input/MCInput;
.super Ljava/lang/Object;
.source "MCInput.java"

# interfaces
.implements Lcom/miniclip/framework/InputHandler;


# static fields
.field public static final AXIS_BRAKE:I = 0x17

.field public static final AXIS_DISTANCE:I = 0x18

.field public static final AXIS_GAS:I = 0x16

.field public static final AXIS_HAT_X:I = 0xf

.field public static final AXIS_HAT_Y:I = 0x10

.field public static final AXIS_HSCROLL:I = 0xa

.field public static final AXIS_LTRIGGER:I = 0x11

.field public static final AXIS_ORIENTATION:I = 0x8

.field public static final AXIS_PRESSURE:I = 0x2

.field public static final AXIS_RTRIGGER:I = 0x12

.field public static final AXIS_RUDDER:I = 0x14

.field public static final AXIS_RX:I = 0xc

.field public static final AXIS_RY:I = 0xd

.field public static final AXIS_RZ:I = 0xe

.field public static final AXIS_SIZE:I = 0x3

.field public static final AXIS_THROTTLE:I = 0x13

.field public static final AXIS_TILT:I = 0x19

.field public static final AXIS_TOOL_MAJOR:I = 0x6

.field public static final AXIS_TOOL_MINOR:I = 0x7

.field public static final AXIS_TOUCH_MAJOR:I = 0x4

.field public static final AXIS_TOUCH_MINOR:I = 0x5

.field public static final AXIS_VSCROLL:I = 0x9

.field public static final AXIS_WHEEL:I = 0x15

.field public static final AXIS_X:I = 0x0

.field public static final AXIS_Y:I = 0x1

.field public static final AXIS_Z:I = 0xb

.field public static final KEYCODE_BUTTON_A:I = 0x60

.field public static final KEYCODE_BUTTON_B:I = 0x61

.field public static final KEYCODE_BUTTON_C:I = 0x62

.field public static final KEYCODE_BUTTON_L1:I = 0x66

.field public static final KEYCODE_BUTTON_L2:I = 0x68

.field public static final KEYCODE_BUTTON_MODE:I = 0x6e

.field public static final KEYCODE_BUTTON_R1:I = 0x67

.field public static final KEYCODE_BUTTON_R2:I = 0x69

.field public static final KEYCODE_BUTTON_SELECT:I = 0x6d

.field public static final KEYCODE_BUTTON_START:I = 0x6c

.field public static final KEYCODE_BUTTON_THUMBL:I = 0x6a

.field public static final KEYCODE_BUTTON_THUMBR:I = 0x6b

.field public static final KEYCODE_BUTTON_X:I = 0x63

.field public static final KEYCODE_BUTTON_Y:I = 0x64

.field public static final KEYCODE_BUTTON_Z:I = 0x65

.field public static final KEYCODE_DPAD_CENTER:I = 0x17

.field public static final KEYCODE_DPAD_DOWN:I = 0x14

.field public static final KEYCODE_DPAD_LEFT:I = 0x15

.field public static final KEYCODE_DPAD_RIGHT:I = 0x16

.field public static final KEYCODE_DPAD_UP:I = 0x13

.field public static final KEYCODE_MENU:I = 0x52

.field public static final MAX_AXIS:I = 0x40

.field public static final MAX_KEYCODES:I = 0x100

.field public static final SUPPORTED_AXIS:[I

.field private static final TAG:Ljava/lang/String;

.field private static activity:Lcom/miniclip/framework/MiniclipAndroidActivity;

.field private static instance:Lcom/miniclip/input/MCInput;


# instance fields
.field axisStates:[F

.field keyStates:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 16
    const-class v0, Lcom/miniclip/input/MCInput;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miniclip/input/MCInput;->TAG:Ljava/lang/String;

    .line 69
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/miniclip/input/MCInput;->SUPPORTED_AXIS:[I

    .line 78
    sput-object v1, Lcom/miniclip/input/MCInput;->instance:Lcom/miniclip/input/MCInput;

    .line 79
    sput-object v1, Lcom/miniclip/input/MCInput;->activity:Lcom/miniclip/framework/MiniclipAndroidActivity;

    return-void

    .line 69
    nop

    :array_0
    .array-data 4
        0xf
        0x10
        0x0
        0x1
        0xb
        0xe
        0x11
        0x17
        0x12
        0x13
    .end array-data
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    const/16 v0, 0x40

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/miniclip/input/MCInput;->axisStates:[F

    .line 118
    const/16 v0, 0x100

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/miniclip/input/MCInput;->keyStates:[Z

    .line 82
    return-void
.end method

.method static synthetic access$000(Lcom/miniclip/input/MCInput;IIF)V
    .locals 0
    .param p0, "x0"    # Lcom/miniclip/input/MCInput;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # F

    .prologue
    .line 14
    invoke-direct {p0, p1, p2, p3}, Lcom/miniclip/input/MCInput;->nativeMotionEvent(IIF)V

    return-void
.end method

.method static synthetic access$100(Lcom/miniclip/input/MCInput;IIZ)V
    .locals 0
    .param p0, "x0"    # Lcom/miniclip/input/MCInput;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .prologue
    .line 14
    invoke-direct {p0, p1, p2, p3}, Lcom/miniclip/input/MCInput;->nativeKeyEvent(IIZ)V

    return-void
.end method

.method private static getCenteredAxis(Landroid/view/MotionEvent;Landroid/view/InputDevice;II)F
    .locals 4
    .param p0, "event"    # Landroid/view/MotionEvent;
    .param p1, "device"    # Landroid/view/InputDevice;
    .param p2, "axis"    # I
    .param p3, "historyPos"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0xc
    .end annotation

    .prologue
    .line 156
    const/4 v1, 0x0

    .line 157
    .local v1, "value":F
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xc

    if-lt v2, v3, :cond_0

    .line 159
    if-gez p3, :cond_1

    invoke-virtual {p0, p2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v1

    .line 163
    :goto_0
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getSource()I

    move-result v2

    invoke-virtual {p1, p2, v2}, Landroid/view/InputDevice;->getMotionRange(II)Landroid/view/InputDevice$MotionRange;

    move-result-object v0

    .line 164
    .local v0, "range":Landroid/view/InputDevice$MotionRange;
    :goto_1
    if-eqz v0, :cond_0

    .line 166
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-virtual {v0}, Landroid/view/InputDevice$MotionRange;->getFlat()F

    move-result v3

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_0

    .line 167
    const/4 v1, 0x0

    .line 171
    .end local v0    # "range":Landroid/view/InputDevice$MotionRange;
    :cond_0
    return v1

    .line 159
    :cond_1
    invoke-virtual {p0, p2, p3}, Landroid/view/MotionEvent;->getHistoricalAxisValue(II)F

    move-result v1

    goto :goto_0

    .line 163
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static getGameControllerIds()[I
    .locals 14

    .prologue
    const v13, 0x1000010

    .line 226
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 227
    .local v4, "gameControllerDeviceIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    move-result-object v3

    .line 228
    .local v3, "deviceIds":[I
    array-length v10, v3

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v10, :cond_2

    aget v2, v3, v9

    .line 229
    .local v2, "deviceId":I
    invoke-static {v2}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v0

    .line 230
    .local v0, "dev":Landroid/view/InputDevice;
    invoke-virtual {v0}, Landroid/view/InputDevice;->getSources()I

    move-result v8

    .line 233
    .local v8, "sources":I
    and-int/lit16 v11, v8, 0x401

    const/16 v12, 0x401

    if-eq v11, v12, :cond_0

    and-int v11, v8, v13

    if-ne v11, v13, :cond_1

    .line 236
    :cond_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 237
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 228
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 242
    .end local v0    # "dev":Landroid/view/InputDevice;
    .end local v2    # "deviceId":I
    .end local v8    # "sources":I
    :cond_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-array v7, v9, [I

    .line 243
    .local v7, "result":[I
    const/4 v5, 0x0

    .line 244
    .local v5, "i":I
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 245
    .local v1, "device":Ljava/lang/Integer;
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "i":I
    .local v6, "i":I
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    aput v10, v7, v5

    move v5, v6

    .line 246
    .end local v6    # "i":I
    .restart local v5    # "i":I
    goto :goto_1

    .line 248
    .end local v1    # "device":Ljava/lang/Integer;
    :cond_3
    return-object v7
.end method

.method public static getInstance()Lcom/miniclip/input/MCInput;
    .locals 1

    .prologue
    .line 94
    sget-object v0, Lcom/miniclip/input/MCInput;->instance:Lcom/miniclip/input/MCInput;

    return-object v0
.end method

.method public static init(Lcom/miniclip/framework/MiniclipAndroidActivity;)V
    .locals 2
    .param p0, "activity"    # Lcom/miniclip/framework/MiniclipAndroidActivity;

    .prologue
    .line 85
    sget-object v0, Lcom/miniclip/input/MCInput;->instance:Lcom/miniclip/input/MCInput;

    if-nez v0, :cond_0

    .line 86
    new-instance v0, Lcom/miniclip/input/MCInput;

    invoke-direct {v0}, Lcom/miniclip/input/MCInput;-><init>()V

    sput-object v0, Lcom/miniclip/input/MCInput;->instance:Lcom/miniclip/input/MCInput;

    .line 87
    sput-object p0, Lcom/miniclip/input/MCInput;->activity:Lcom/miniclip/framework/MiniclipAndroidActivity;

    .line 88
    sget-object v0, Lcom/miniclip/input/MCInput;->instance:Lcom/miniclip/input/MCInput;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/miniclip/framework/MiniclipAndroidActivity;->addInputHandler(Lcom/miniclip/framework/InputHandler;I)Z

    .line 90
    :cond_0
    sget-object v0, Lcom/miniclip/input/MCInput;->instance:Lcom/miniclip/input/MCInput;

    invoke-virtual {v0}, Lcom/miniclip/input/MCInput;->debugDeviceType()V

    .line 91
    return-void
.end method

.method public static isTelephonyAvailable()Z
    .locals 2

    .prologue
    .line 260
    sget-object v0, Lcom/miniclip/input/MCInput;->activity:Lcom/miniclip/framework/MiniclipAndroidActivity;

    invoke-virtual {v0}, Lcom/miniclip/framework/MiniclipAndroidActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.telephony"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isTouchScreenAvailable()Z
    .locals 2

    .prologue
    .line 256
    sget-object v0, Lcom/miniclip/input/MCInput;->activity:Lcom/miniclip/framework/MiniclipAndroidActivity;

    invoke-virtual {v0}, Lcom/miniclip/framework/MiniclipAndroidActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.touchscreen"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private native nativeKeyEvent(IIZ)V
.end method

.method private native nativeMotionEvent(IIF)V
.end method

.method public static native nativeTouchesBegin(IFF)V
.end method

.method public static native nativeTouchesCancel([I[F[F)V
.end method

.method public static native nativeTouchesEnd(IFF)V
.end method

.method public static native nativeTouchesMove([I[F[F)V
.end method

.method private processMotionEvent(Landroid/view/MotionEvent;I)V
    .locals 10
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "historyPos"    # I

    .prologue
    .line 137
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v2

    .line 139
    .local v2, "inputDevice":Landroid/view/InputDevice;
    sget-object v5, Lcom/miniclip/input/MCInput;->SUPPORTED_AXIS:[I

    array-length v6, v5

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v6, :cond_1

    aget v0, v5, v4

    .line 140
    .local v0, "axis":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v1

    .line 141
    .local v1, "deviceId":I
    invoke-static {p1, v2, v0, p2}, Lcom/miniclip/input/MCInput;->getCenteredAxis(Landroid/view/MotionEvent;Landroid/view/InputDevice;II)F

    move-result v3

    .line 142
    .local v3, "value":F
    invoke-virtual {p0, v1, v0}, Lcom/miniclip/input/MCInput;->getAxisState(II)F

    move-result v7

    cmpl-float v7, v3, v7

    if-eqz v7, :cond_0

    .line 143
    sget-object v7, Lcom/miniclip/input/MCInput;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onMotion: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    invoke-virtual {p0, v1, v0, v3}, Lcom/miniclip/input/MCInput;->setAxisState(IIF)V

    .line 145
    sget-object v7, Lcom/miniclip/input/MCInput;->activity:Lcom/miniclip/framework/MiniclipAndroidActivity;

    sget-object v8, Lcom/miniclip/framework/ThreadingContext;->GlThread:Lcom/miniclip/framework/ThreadingContext;

    new-instance v9, Lcom/miniclip/input/MCInput$1;

    invoke-direct {v9, p0, v1, v0, v3}, Lcom/miniclip/input/MCInput$1;-><init>(Lcom/miniclip/input/MCInput;IIF)V

    invoke-virtual {v7, v8, v9}, Lcom/miniclip/framework/MiniclipAndroidActivity;->queueEvent(Lcom/miniclip/framework/ThreadingContext;Ljava/lang/Runnable;)V

    .line 139
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 152
    .end local v0    # "axis":I
    .end local v1    # "deviceId":I
    .end local v3    # "value":F
    :cond_1
    return-void
.end method

.method public static setAccelerometerEnabled(Z)V
    .locals 0
    .param p0, "enabled"    # Z

    .prologue
    .line 252
    invoke-static {p0}, Lcom/miniclip/input/MCAccelerometer;->setEnabled(Z)V

    .line 253
    return-void
.end method


# virtual methods
.method public debugDeviceType()V
    .locals 2

    .prologue
    .line 265
    invoke-static {}, Lcom/miniclip/input/MCInput;->isTelephonyAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 266
    sget-object v0, Lcom/miniclip/input/MCInput;->TAG:Ljava/lang/String;

    const-string v1, "Running on phone"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    :goto_0
    return-void

    .line 268
    :cond_0
    invoke-static {}, Lcom/miniclip/input/MCInput;->isTouchScreenAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 269
    sget-object v0, Lcom/miniclip/input/MCInput;->TAG:Ljava/lang/String;

    const-string v1, "Running on devices that don\'t support telephony but do have a touch screen."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 271
    :cond_1
    sget-object v0, Lcom/miniclip/input/MCInput;->TAG:Ljava/lang/String;

    const-string v1, "Running on a TV!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method getAxisState(II)F
    .locals 1
    .param p1, "deviceId"    # I
    .param p2, "axisId"    # I

    .prologue
    .line 121
    const/16 v0, 0x40

    if-ge p2, v0, :cond_0

    iget-object v0, p0, Lcom/miniclip/input/MCInput;->axisStates:[F

    aget v0, v0, p2

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getKeyState(II)Z
    .locals 1
    .param p1, "deviceId"    # I
    .param p2, "buttonId"    # I

    .prologue
    .line 124
    const/16 v0, 0x100

    if-ge p2, v0, :cond_0

    iget-object v0, p0, Lcom/miniclip/input/MCInput;->keyStates:[Z

    aget-boolean v0, v0, p2

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 99
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v2

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_1

    .line 102
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v0

    .line 103
    .local v0, "historySize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 104
    invoke-direct {p0, p1, v1}, Lcom/miniclip/input/MCInput;->processMotionEvent(Landroid/view/MotionEvent;I)V

    .line 103
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 108
    :cond_0
    const/4 v2, -0x1

    invoke-direct {p0, p1, v2}, Lcom/miniclip/input/MCInput;->processMotionEvent(Landroid/view/MotionEvent;I)V

    .line 109
    const/4 v2, 0x1

    .line 111
    .end local v0    # "historySize":I
    .end local v1    # "i":I
    :goto_1
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    .line 176
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getSource()I

    move-result v2

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v1, :cond_0

    .line 177
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v0

    .line 178
    .local v0, "deviceId":I
    invoke-virtual {p0, v0, p1}, Lcom/miniclip/input/MCInput;->getKeyState(II)Z

    move-result v2

    if-nez v2, :cond_0

    .line 179
    sget-object v2, Lcom/miniclip/input/MCInput;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onKeyDown: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    invoke-virtual {p0, v0, p1, v1}, Lcom/miniclip/input/MCInput;->setKeyState(IIZ)V

    .line 181
    sget-object v2, Lcom/miniclip/input/MCInput;->activity:Lcom/miniclip/framework/MiniclipAndroidActivity;

    sget-object v3, Lcom/miniclip/framework/ThreadingContext;->GlThread:Lcom/miniclip/framework/ThreadingContext;

    new-instance v4, Lcom/miniclip/input/MCInput$2;

    invoke-direct {v4, p0, v0, p1}, Lcom/miniclip/input/MCInput$2;-><init>(Lcom/miniclip/input/MCInput;II)V

    invoke-virtual {v2, v3, v4}, Lcom/miniclip/framework/MiniclipAndroidActivity;->queueEvent(Lcom/miniclip/framework/ThreadingContext;Ljava/lang/Runnable;)V

    .line 189
    .end local v0    # "deviceId":I
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 194
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getSource()I

    move-result v3

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v1, :cond_0

    .line 195
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v0

    .line 196
    .local v0, "deviceId":I
    invoke-virtual {p0, v0, p1}, Lcom/miniclip/input/MCInput;->getKeyState(II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 197
    sget-object v3, Lcom/miniclip/input/MCInput;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onKeyUp: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    invoke-virtual {p0, v0, p1, v2}, Lcom/miniclip/input/MCInput;->setKeyState(IIZ)V

    .line 199
    sget-object v2, Lcom/miniclip/input/MCInput;->activity:Lcom/miniclip/framework/MiniclipAndroidActivity;

    sget-object v3, Lcom/miniclip/framework/ThreadingContext;->GlThread:Lcom/miniclip/framework/ThreadingContext;

    new-instance v4, Lcom/miniclip/input/MCInput$3;

    invoke-direct {v4, p0, v0, p1}, Lcom/miniclip/input/MCInput$3;-><init>(Lcom/miniclip/input/MCInput;II)V

    invoke-virtual {v2, v3, v4}, Lcom/miniclip/framework/MiniclipAndroidActivity;->queueEvent(Lcom/miniclip/framework/ThreadingContext;Ljava/lang/Runnable;)V

    .line 207
    .end local v0    # "deviceId":I
    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method setAxisState(IIF)V
    .locals 1
    .param p1, "deviceId"    # I
    .param p2, "axisId"    # I
    .param p3, "value"    # F

    .prologue
    .line 128
    const/16 v0, 0x40

    if-ge p2, v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/miniclip/input/MCInput;->axisStates:[F

    aput p3, v0, p2

    .line 130
    :cond_0
    return-void
.end method

.method setKeyState(IIZ)V
    .locals 1
    .param p1, "deviceId"    # I
    .param p2, "buttonId"    # I
    .param p3, "value"    # Z

    .prologue
    .line 132
    const/16 v0, 0x100

    if-ge p2, v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/miniclip/input/MCInput;->keyStates:[Z

    aput-boolean p3, v0, p2

    .line 134
    :cond_0
    return-void
.end method
