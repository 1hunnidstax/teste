.class public Lcom/miniclip/eightballpool/EightBallPoolBaseActivity;
.super Lcom/miniclip/nativeJNI/cocojava;
.source "EightBallPoolBaseActivity.java"

# interfaces
.implements Lcom/miniclip/facebook/MCFacebook$QueueEvent;
.implements Lcom/miniclip/platform/MCViewManager$MCViewManagerEventsListener;


# instance fields
.field private TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/miniclip/nativeJNI/cocojava;-><init>()V

    .line 31
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miniclip/eightballpool/EightBallPoolBaseActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/miniclip/eightballpool/EightBallPoolBaseActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/miniclip/eightballpool/EightBallPoolBaseActivity;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/miniclip/eightballpool/EightBallPoolBaseActivity;->nativeOnGlobalLayout()V

    return-void
.end method

.method public static getRelativeHeight()F
    .locals 5

    .prologue
    .line 178
    invoke-static {}, Lcom/miniclip/framework/Miniclip;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    .line 179
    .local v2, "rootView":Landroid/view/View;
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 180
    .local v0, "r":Landroid/graphics/Rect;
    invoke-virtual {v2, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 181
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v3, v4

    .line 182
    .local v3, "screenHeight":F
    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    div-float v1, v4, v3

    .line 183
    .local v1, "relativePosition":F
    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v4, v1

    return v4
.end method

.method public static getRelativeLeft()F
    .locals 5

    .prologue
    .line 188
    invoke-static {}, Lcom/miniclip/framework/Miniclip;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    .line 189
    .local v2, "rootView":Landroid/view/View;
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 190
    .local v0, "r":Landroid/graphics/Rect;
    invoke-virtual {v2, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 191
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v3, v4

    .line 192
    .local v3, "screenWidth":F
    iget v4, v0, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    div-float v1, v4, v3

    .line 193
    .local v1, "relativePosition":F
    return v1
.end method

.method public static getRelativeRight()F
    .locals 5

    .prologue
    .line 198
    invoke-static {}, Lcom/miniclip/framework/Miniclip;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    .line 199
    .local v2, "rootView":Landroid/view/View;
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 200
    .local v0, "r":Landroid/graphics/Rect;
    invoke-virtual {v2, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 201
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v3, v4

    .line 202
    .local v3, "screenWidth":F
    iget v4, v0, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    div-float v1, v4, v3

    .line 203
    .local v1, "relativePosition":F
    return v1
.end method

.method public static isFullVersion()Z
    .locals 2

    .prologue
    .line 173
    const-string v0, "full"

    const-string v1, "full"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private native nativeOnGlobalLayout()V
.end method


# virtual methods
.method protected loadExternalModules()V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x1

    sput-boolean v0, Lcom/miniclip/facebook/MCFacebook;->mUSE_FACEBOOK:Z

    .line 35
    sput-object p0, Lcom/miniclip/facebook/MCFacebook;->mContext:Landroid/app/Activity;

    .line 36
    sput-object p0, Lcom/miniclip/facebook/MCFacebook;->mGLView:Lcom/miniclip/facebook/MCFacebook$QueueEvent;

    .line 37
    const-string v0, "165073083517174"

    sput-object v0, Lcom/miniclip/facebook/MCFacebook;->mFacebookAPP_ID:Ljava/lang/String;

    .line 39
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/miniclip/facebook/MCFacebook;->onCreate(Landroid/os/Bundle;)V

    .line 41
    invoke-static {p0}, Lcom/miniclip/externalappsmanager/ExternalAppsManager;->init(Lcom/miniclip/framework/MiniclipAndroidActivity;)V

    .line 43
    invoke-static {p0}, Lcom/miniclip/storeview/StoreView;->init(Lcom/miniclip/framework/MiniclipAndroidActivity;)V

    .line 45
    invoke-static {p0}, Lcom/miniclip/inapppurchases/MCInAppPurchases;->init(Landroid/app/Activity;)V

    .line 47
    new-instance v0, Lcom/miniclip/eightballpool/EightBallPoolBaseActivity$1;

    invoke-direct {v0, p0}, Lcom/miniclip/eightballpool/EightBallPoolBaseActivity$1;-><init>(Lcom/miniclip/eightballpool/EightBallPoolBaseActivity;)V

    invoke-static {v0}, Lcom/miniclip/scriptsystem/ScriptSystem;->init(Lcom/miniclip/scriptsystem/ScriptSystemInterface;)V

    .line 62
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "responseCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 141
    invoke-super {p0, p1, p2, p3}, Lcom/miniclip/nativeJNI/cocojava;->onActivityResult(IILandroid/content/Intent;)V

    .line 142
    invoke-static {p1, p2, p3}, Lcom/miniclip/facebook/MCFacebook;->onActivityResult(IILandroid/content/Intent;)V

    .line 143
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    .line 70
    sput-boolean v5, Lcom/miniclip/eightballpool/EightBallPoolBaseActivity;->mHAS_RETINA:Z

    .line 71
    sput-boolean v5, Lcom/miniclip/eightballpool/EightBallPoolBaseActivity;->mSPINNING_ANIMATION:Z

    .line 72
    sput-boolean v5, Lcom/miniclip/eightballpool/EightBallPoolBaseActivity;->mINGAME_LANDSCAPE:Z

    .line 73
    const-string v3, "game-BPM-GooglePlay-GoldMaster-935"

    sput-object v3, Lcom/miniclip/eightballpool/EightBallPoolBaseActivity;->mNATIVE_LIBRARY_NAME:Ljava/lang/String;

    .line 75
    invoke-super {p0, p1}, Lcom/miniclip/nativeJNI/cocojava;->onCreate(Landroid/os/Bundle;)V

    .line 77
    invoke-static {p0}, Lcom/miniclip/platform/MCViewManager;->addListener(Lcom/miniclip/platform/MCViewManager$MCViewManagerEventsListener;)Z

    .line 79
    sput-boolean v5, Lcom/miniclip/input/MCKeyboard;->mSHOW_KEYBOARD_INPUT:Z

    .line 80
    sput-boolean v5, Lcom/miniclip/input/MCKeyboard;->mKEYBOARD_INPUT_SINGLE_LINE:Z

    .line 81
    const/4 v3, 0x0

    sput-boolean v3, Lcom/miniclip/input/MCKeyboard;->mKEYBOARD_FULLSCREEN:Z

    .line 82
    invoke-static {p0}, Lcom/miniclip/input/MCKeyboard;->init(Lcom/miniclip/framework/MiniclipAndroidActivity;)V

    .line 84
    invoke-virtual {p0}, Lcom/miniclip/eightballpool/EightBallPoolBaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    .line 88
    const-string v3, "APP_VERSION_NUMBER"

    invoke-static {v3}, Lcom/miniclip/eightballpool/EightBallPoolBaseActivity;->SharedPreferences_getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 89
    .local v2, "previousVersionNumber":Ljava/lang/String;
    invoke-static {}, Lcom/miniclip/eightballpool/EightBallPoolBaseActivity;->getAppVersionNumber()Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, "currentVersionNumber":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 93
    invoke-virtual {p0}, Lcom/miniclip/eightballpool/EightBallPoolBaseActivity;->getFilesDir()Ljava/io/File;

    move-result-object v1

    .line 94
    .local v1, "filesDir":Ljava/io/File;
    new-instance v3, Lcom/miniclip/eightballpool/EightBallPoolBaseActivity$2;

    invoke-direct {v3, p0, v1, v0}, Lcom/miniclip/eightballpool/EightBallPoolBaseActivity$2;-><init>(Lcom/miniclip/eightballpool/EightBallPoolBaseActivity;Ljava/io/File;Ljava/lang/String;)V

    sput-object v3, Lcom/miniclip/eightballpool/EightBallPoolBaseActivity;->mUpdateRunable:Ljava/lang/Runnable;

    .line 115
    sput-boolean v5, Lcom/miniclip/eightballpool/EightBallPoolBaseActivity;->mUpdateRunableCall:Z

    .line 118
    .end local v1    # "filesDir":Ljava/io/File;
    :cond_0
    invoke-virtual {p0}, Lcom/miniclip/eightballpool/EightBallPoolBaseActivity;->loadExternalModules()V

    .line 120
    invoke-virtual {p0}, Lcom/miniclip/eightballpool/EightBallPoolBaseActivity;->registerKeyboardUpdateCallback()V

    .line 121
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 129
    invoke-super {p0}, Lcom/miniclip/nativeJNI/cocojava;->onResume()V

    .line 130
    iget-object v0, p0, Lcom/miniclip/eightballpool/EightBallPoolBaseActivity;->TAG:Ljava/lang/String;

    const-string v1, "**************************** onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    invoke-static {}, Lcom/miniclip/facebook/MCFacebook;->onResume()V

    .line 132
    return-void
.end method

.method public onShowDefaultView(Landroid/widget/RelativeLayout;)V
    .locals 13
    .param p1, "defaultView"    # Landroid/widget/RelativeLayout;

    .prologue
    .line 149
    const/high16 v4, 0x43800000    # 256.0f

    .line 150
    .local v4, "origH":F
    const/high16 v5, 0x44200000    # 640.0f

    .line 151
    .local v5, "origScreenH":F
    const/high16 v6, 0x43000000    # 128.0f

    .line 153
    .local v6, "origY":F
    :try_start_0
    sget v9, Lcom/miniclip/platform/MCViewManager;->displayHeight:I

    int-to-float v9, v9

    div-float v7, v9, v5

    .line 154
    .local v7, "ratio":F
    mul-float v9, v4, v7

    float-to-int v2, v9

    .line 155
    .local v2, "newH":I
    mul-float v9, v6, v7

    float-to-int v3, v9

    .line 157
    .local v3, "newY":I
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 158
    .local v0, "bg1":Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/miniclip/eightballpool/EightBallPoolBaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const-string v10, "intro_background"

    const-string v11, "drawable"

    invoke-virtual {p0}, Lcom/miniclip/eightballpool/EightBallPoolBaseActivity;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v10, v11, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 159
    .local v8, "resourceId":I
    invoke-virtual {p0}, Lcom/miniclip/eightballpool/EightBallPoolBaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 162
    new-instance v9, Landroid/view/ViewGroup$LayoutParams;

    sget v10, Lcom/miniclip/platform/MCViewManager;->displayWidth:I

    sget v11, Lcom/miniclip/platform/MCViewManager;->displayHeight:I

    invoke-direct {v9, v10, v11}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 163
    const/4 v9, 0x0

    const/4 v10, 0x0

    sget v11, Lcom/miniclip/platform/MCViewManager;->displayHeight:I

    sub-int/2addr v11, v2

    sub-int/2addr v11, v3

    invoke-virtual {v0, v9, v3, v10, v11}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 164
    sget-object v9, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 166
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    .end local v0    # "bg1":Landroid/widget/ImageView;
    .end local v2    # "newH":I
    .end local v3    # "newY":I
    .end local v7    # "ratio":F
    .end local v8    # "resourceId":I
    :goto_0
    return-void

    .line 167
    :catch_0
    move-exception v1

    .line 168
    .local v1, "ex":Ljava/lang/Exception;
    invoke-static {}, Lcom/miniclip/nativeJNI/cocojava;->displayLowStorageMessage()V

    goto :goto_0
.end method

.method public queueEvent(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 135
    sget-object v0, Lcom/miniclip/framework/ThreadingContext;->GlThread:Lcom/miniclip/framework/ThreadingContext;

    invoke-virtual {p0, v0, p1}, Lcom/miniclip/eightballpool/EightBallPoolBaseActivity;->queueEvent(Lcom/miniclip/framework/ThreadingContext;Ljava/lang/Runnable;)V

    .line 136
    return-void
.end method

.method public registerKeyboardUpdateCallback()V
    .locals 3

    .prologue
    .line 208
    invoke-static {}, Lcom/miniclip/framework/Miniclip;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 209
    .local v0, "rootView":Landroid/view/View;
    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/miniclip/eightballpool/EightBallPoolBaseActivity$3;

    invoke-direct {v2, p0, v0}, Lcom/miniclip/eightballpool/EightBallPoolBaseActivity$3;-><init>(Lcom/miniclip/eightballpool/EightBallPoolBaseActivity;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 231
    return-void
.end method
