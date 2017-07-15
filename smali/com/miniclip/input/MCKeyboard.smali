.class public Lcom/miniclip/input/MCKeyboard;
.super Lcom/miniclip/framework/AbstractActivityListener;
.source "MCKeyboard.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static activity:Lcom/miniclip/framework/MiniclipAndroidActivity;

.field private static instance:Lcom/miniclip/input/MCKeyboard;

.field private static mEditText:Landroid/widget/EditText;

.field public static mKEYBOARD_CUSTOM_BACKGROUND:Z

.field public static mKEYBOARD_FULLSCREEN:Z

.field public static mKEYBOARD_INPUT_HIDE:Z

.field public static mKEYBOARD_INPUT_SINGLE_LINE:Z

.field public static mKEYBOARD_OVERRIDE_VISIBILITY:Z

.field private static mKeyboardHandler:Landroid/os/Handler;

.field public static mSHOW_KEYBOARD_INPUT:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 40
    sput-boolean v0, Lcom/miniclip/input/MCKeyboard;->mSHOW_KEYBOARD_INPUT:Z

    .line 41
    sput-boolean v0, Lcom/miniclip/input/MCKeyboard;->mKEYBOARD_INPUT_SINGLE_LINE:Z

    .line 42
    sput-boolean v2, Lcom/miniclip/input/MCKeyboard;->mKEYBOARD_INPUT_HIDE:Z

    .line 43
    sput-boolean v0, Lcom/miniclip/input/MCKeyboard;->mKEYBOARD_OVERRIDE_VISIBILITY:Z

    .line 44
    sput-boolean v2, Lcom/miniclip/input/MCKeyboard;->mKEYBOARD_FULLSCREEN:Z

    .line 45
    sput-boolean v0, Lcom/miniclip/input/MCKeyboard;->mKEYBOARD_CUSTOM_BACKGROUND:Z

    .line 47
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/miniclip/input/MCKeyboard;->mKeyboardHandler:Landroid/os/Handler;

    .line 48
    sput-object v1, Lcom/miniclip/input/MCKeyboard;->mEditText:Landroid/widget/EditText;

    .line 50
    const-class v0, Lcom/miniclip/input/MCKeyboard;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miniclip/input/MCKeyboard;->TAG:Ljava/lang/String;

    .line 52
    sput-object v1, Lcom/miniclip/input/MCKeyboard;->instance:Lcom/miniclip/input/MCKeyboard;

    .line 53
    sput-object v1, Lcom/miniclip/input/MCKeyboard;->activity:Lcom/miniclip/framework/MiniclipAndroidActivity;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/miniclip/framework/AbstractActivityListener;-><init>()V

    return-void
.end method

.method private static native MkeyboardInputActionPressed(Ljava/lang/String;)Z
.end method

.method private static native MkeyboardInputCanceled(Ljava/lang/String;)V
.end method

.method private static native MkeyboardInputClosed(Ljava/lang/String;)V
.end method

.method private static native MkeyboardInputResponse(Ljava/lang/String;)V
.end method

.method static synthetic access$000()Lcom/miniclip/framework/MiniclipAndroidActivity;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/miniclip/input/MCKeyboard;->activity:Lcom/miniclip/framework/MiniclipAndroidActivity;

    return-object v0
.end method

.method static synthetic access$100()Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/miniclip/input/MCKeyboard;->mEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$200(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-static {p0}, Lcom/miniclip/input/MCKeyboard;->MkeyboardInputCanceled(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-static {p0}, Lcom/miniclip/input/MCKeyboard;->MkeyboardInputResponse(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-static {p0}, Lcom/miniclip/input/MCKeyboard;->MkeyboardInputActionPressed(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-static {p0}, Lcom/miniclip/input/MCKeyboard;->MkeyboardInputClosed(Ljava/lang/String;)V

    return-void
.end method

.method public static getCaretPosition()I
    .locals 6

    .prologue
    .line 256
    sget-object v1, Lcom/miniclip/input/MCKeyboard;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v0

    .line 257
    .local v0, "position":I
    const-string v1, "KeyboardInput"

    const-string v2, "getCaretPosition position: %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    return v0
.end method

.method public static getInstance()Lcom/miniclip/input/MCKeyboard;
    .locals 1

    .prologue
    .line 218
    sget-object v0, Lcom/miniclip/input/MCKeyboard;->instance:Lcom/miniclip/input/MCKeyboard;

    return-object v0
.end method

.method public static getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 431
    sget-object v0, Lcom/miniclip/input/MCKeyboard;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static init(Lcom/miniclip/framework/MiniclipAndroidActivity;)V
    .locals 9
    .param p0, "activity"    # Lcom/miniclip/framework/MiniclipAndroidActivity;

    .prologue
    const/4 v8, -0x2

    const/4 v7, 0x1

    .line 59
    sget-object v5, Lcom/miniclip/input/MCKeyboard;->instance:Lcom/miniclip/input/MCKeyboard;

    if-nez v5, :cond_0

    .line 60
    new-instance v5, Lcom/miniclip/input/MCKeyboard;

    invoke-direct {v5}, Lcom/miniclip/input/MCKeyboard;-><init>()V

    sput-object v5, Lcom/miniclip/input/MCKeyboard;->instance:Lcom/miniclip/input/MCKeyboard;

    .line 61
    sput-object p0, Lcom/miniclip/input/MCKeyboard;->activity:Lcom/miniclip/framework/MiniclipAndroidActivity;

    .line 67
    :cond_0
    sget-object v5, Lcom/miniclip/input/MCKeyboard;->mEditText:Landroid/widget/EditText;

    if-nez v5, :cond_4

    .line 69
    new-instance v5, Lcom/miniclip/input/MCKeyboard$1;

    sget-object v6, Lcom/miniclip/input/MCKeyboard;->activity:Lcom/miniclip/framework/MiniclipAndroidActivity;

    invoke-direct {v5, v6}, Lcom/miniclip/input/MCKeyboard$1;-><init>(Landroid/content/Context;)V

    sput-object v5, Lcom/miniclip/input/MCKeyboard;->mEditText:Landroid/widget/EditText;

    .line 95
    sget-boolean v5, Lcom/miniclip/input/MCKeyboard;->mKEYBOARD_INPUT_HIDE:Z

    if-eqz v5, :cond_1

    .line 97
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 98
    .local v3, "params":Landroid/widget/RelativeLayout$LayoutParams;
    sget-object v5, Lcom/miniclip/input/MCKeyboard;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v5, v3}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 102
    .end local v3    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_1
    sget-object v5, Lcom/miniclip/input/MCKeyboard;->mEditText:Landroid/widget/EditText;

    const/4 v6, 0x6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 104
    sget-object v5, Lcom/miniclip/input/MCKeyboard;->mEditText:Landroid/widget/EditText;

    new-instance v6, Lcom/miniclip/input/MCKeyboard$2;

    invoke-direct {v6}, Lcom/miniclip/input/MCKeyboard$2;-><init>()V

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 122
    sget-object v5, Lcom/miniclip/input/MCKeyboard;->mEditText:Landroid/widget/EditText;

    new-instance v6, Lcom/miniclip/input/MCKeyboard$3;

    invoke-direct {v6}, Lcom/miniclip/input/MCKeyboard$3;-><init>()V

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 167
    sget-object v5, Lcom/miniclip/input/MCKeyboard;->mEditText:Landroid/widget/EditText;

    const/16 v6, 0x7d0

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setWidth(I)V

    .line 168
    sget-boolean v5, Lcom/miniclip/input/MCKeyboard;->mKEYBOARD_OVERRIDE_VISIBILITY:Z

    if-nez v5, :cond_2

    .line 169
    sget-object v5, Lcom/miniclip/input/MCKeyboard;->mEditText:Landroid/widget/EditText;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setVisibility(I)V

    .line 170
    :cond_2
    sget-boolean v5, Lcom/miniclip/input/MCKeyboard;->mSHOW_KEYBOARD_INPUT:Z

    if-eqz v5, :cond_5

    .line 171
    invoke-virtual {p0}, Lcom/miniclip/framework/MiniclipAndroidActivity;->getMainLayout()Landroid/widget/RelativeLayout;

    move-result-object v5

    sget-object v6, Lcom/miniclip/input/MCKeyboard;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 193
    :goto_0
    sget-boolean v5, Lcom/miniclip/input/MCKeyboard;->mKEYBOARD_FULLSCREEN:Z

    if-nez v5, :cond_3

    .line 194
    sget-object v5, Lcom/miniclip/input/MCKeyboard;->mEditText:Landroid/widget/EditText;

    const v6, 0x10000006

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 195
    :cond_3
    sget-object v5, Lcom/miniclip/input/MCKeyboard;->mEditText:Landroid/widget/EditText;

    new-instance v6, Lcom/miniclip/input/MCKeyboard$4;

    invoke-direct {v6}, Lcom/miniclip/input/MCKeyboard$4;-><init>()V

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    sget-boolean v5, Lcom/miniclip/input/MCKeyboard;->mKEYBOARD_CUSTOM_BACKGROUND:Z

    if-eqz v5, :cond_4

    .line 205
    invoke-virtual {p0}, Lcom/miniclip/framework/MiniclipAndroidActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string v6, "roundsquare"

    const-string v7, "drawable"

    invoke-virtual {p0}, Lcom/miniclip/framework/MiniclipAndroidActivity;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 206
    .local v4, "resourceIdInputBackground":I
    sget-object v5, Lcom/miniclip/input/MCKeyboard;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/miniclip/framework/MiniclipAndroidActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 214
    .end local v4    # "resourceIdInputBackground":I
    :cond_4
    sget-object v5, Lcom/miniclip/input/MCKeyboard;->instance:Lcom/miniclip/input/MCKeyboard;

    invoke-virtual {p0, v5}, Lcom/miniclip/framework/MiniclipAndroidActivity;->addListener(Lcom/miniclip/framework/ActivityListener;)Z

    .line 215
    return-void

    .line 175
    :cond_5
    sget-boolean v5, Lcom/miniclip/input/MCKeyboard;->mKEYBOARD_INPUT_SINGLE_LINE:Z

    if-eqz v5, :cond_6

    .line 178
    sget-object v5, Lcom/miniclip/input/MCKeyboard;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v5, v7}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 181
    :cond_6
    new-instance v2, Landroid/widget/RelativeLayout;

    invoke-direct {v2, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 182
    .local v2, "hideEditText":Landroid/widget/RelativeLayout;
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 186
    .local v1, "hideEditTestParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 187
    sget-object v5, Lcom/miniclip/input/MCKeyboard;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 188
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 190
    .local v0, "SDK_INT":I
    invoke-virtual {p0}, Lcom/miniclip/framework/MiniclipAndroidActivity;->getMainLayout()Landroid/widget/RelativeLayout;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public static keyboardInput_Hide()V
    .locals 3

    .prologue
    .line 345
    sget-object v0, Lcom/miniclip/input/MCKeyboard;->activity:Lcom/miniclip/framework/MiniclipAndroidActivity;

    sget-object v1, Lcom/miniclip/framework/ThreadingContext;->UiThread:Lcom/miniclip/framework/ThreadingContext;

    new-instance v2, Lcom/miniclip/input/MCKeyboard$13;

    invoke-direct {v2}, Lcom/miniclip/input/MCKeyboard$13;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/miniclip/framework/MiniclipAndroidActivity;->queueEvent(Lcom/miniclip/framework/ThreadingContext;Ljava/lang/Runnable;)V

    .line 353
    return-void
.end method

.method public static keyboardInput_Show(Ljava/lang/String;)V
    .locals 3
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 224
    sget-object v0, Lcom/miniclip/input/MCKeyboard;->activity:Lcom/miniclip/framework/MiniclipAndroidActivity;

    sget-object v1, Lcom/miniclip/framework/ThreadingContext;->UiThread:Lcom/miniclip/framework/ThreadingContext;

    new-instance v2, Lcom/miniclip/input/MCKeyboard$5;

    invoke-direct {v2, p0}, Lcom/miniclip/input/MCKeyboard$5;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/miniclip/framework/MiniclipAndroidActivity;->queueEvent(Lcom/miniclip/framework/ThreadingContext;Ljava/lang/Runnable;)V

    .line 238
    return-void
.end method

.method public static keyboardInput_Show_withMaxLengthLocked(Ljava/lang/String;I)V
    .locals 3
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "maxLength"    # I

    .prologue
    .line 263
    sget-object v0, Lcom/miniclip/input/MCKeyboard;->activity:Lcom/miniclip/framework/MiniclipAndroidActivity;

    sget-object v1, Lcom/miniclip/framework/ThreadingContext;->UiThread:Lcom/miniclip/framework/ThreadingContext;

    new-instance v2, Lcom/miniclip/input/MCKeyboard$7;

    invoke-direct {v2, p0, p1}, Lcom/miniclip/input/MCKeyboard$7;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Lcom/miniclip/framework/MiniclipAndroidActivity;->queueEvent(Lcom/miniclip/framework/ThreadingContext;Ljava/lang/Runnable;)V

    .line 281
    return-void
.end method

.method public static setCaretPosition(I)V
    .locals 3
    .param p0, "position"    # I

    .prologue
    .line 242
    sget-object v0, Lcom/miniclip/input/MCKeyboard;->activity:Lcom/miniclip/framework/MiniclipAndroidActivity;

    sget-object v1, Lcom/miniclip/framework/ThreadingContext;->AndroidUi:Lcom/miniclip/framework/ThreadingContext;

    new-instance v2, Lcom/miniclip/input/MCKeyboard$6;

    invoke-direct {v2, p0}, Lcom/miniclip/input/MCKeyboard$6;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Lcom/miniclip/framework/MiniclipAndroidActivity;->queueEvent(Lcom/miniclip/framework/ThreadingContext;Ljava/lang/Runnable;)V

    .line 252
    return-void
.end method

.method public static setImeOptions(I)V
    .locals 5
    .param p0, "options"    # I

    .prologue
    .line 421
    const-string v0, "cocojava"

    const-string v1, "setImeOptions: %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    sget-object v0, Lcom/miniclip/input/MCKeyboard;->activity:Lcom/miniclip/framework/MiniclipAndroidActivity;

    sget-object v1, Lcom/miniclip/framework/ThreadingContext;->UiThread:Lcom/miniclip/framework/ThreadingContext;

    new-instance v2, Lcom/miniclip/input/MCKeyboard$17;

    invoke-direct {v2, p0}, Lcom/miniclip/input/MCKeyboard$17;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Lcom/miniclip/framework/MiniclipAndroidActivity;->queueEvent(Lcom/miniclip/framework/ThreadingContext;Ljava/lang/Runnable;)V

    .line 427
    return-void
.end method

.method public static setKeyboardInputMaxLength(I)V
    .locals 5
    .param p0, "maxLength"    # I

    .prologue
    .line 381
    const-string v0, "cocojava"

    const-string v1, "setKeyboardInputMaxLength: %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    sget-object v0, Lcom/miniclip/input/MCKeyboard;->activity:Lcom/miniclip/framework/MiniclipAndroidActivity;

    sget-object v1, Lcom/miniclip/framework/ThreadingContext;->UiThread:Lcom/miniclip/framework/ThreadingContext;

    new-instance v2, Lcom/miniclip/input/MCKeyboard$16;

    invoke-direct {v2, p0}, Lcom/miniclip/input/MCKeyboard$16;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Lcom/miniclip/framework/MiniclipAndroidActivity;->queueEvent(Lcom/miniclip/framework/ThreadingContext;Ljava/lang/Runnable;)V

    .line 417
    return-void
.end method

.method public static setKeyboardInputPosition(FFFFFF)V
    .locals 9
    .param p0, "x"    # F
    .param p1, "y"    # F
    .param p2, "width"    # F
    .param p3, "height"    # F
    .param p4, "anchorX"    # F
    .param p5, "anchorY"    # F

    .prologue
    .line 286
    sget-object v7, Lcom/miniclip/input/MCKeyboard;->activity:Lcom/miniclip/framework/MiniclipAndroidActivity;

    sget-object v8, Lcom/miniclip/framework/ThreadingContext;->UiThread:Lcom/miniclip/framework/ThreadingContext;

    new-instance v0, Lcom/miniclip/input/MCKeyboard$8;

    move v1, p3

    move v2, p2

    move v3, p0

    move v4, p4

    move v5, p1

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/miniclip/input/MCKeyboard$8;-><init>(FFFFFF)V

    invoke-virtual {v7, v8, v0}, Lcom/miniclip/framework/MiniclipAndroidActivity;->queueEvent(Lcom/miniclip/framework/ThreadingContext;Ljava/lang/Runnable;)V

    .line 298
    return-void
.end method

.method public static setKeyboardInputSingleLine(I)V
    .locals 3
    .param p0, "singleLine"    # I

    .prologue
    .line 357
    sget-object v0, Lcom/miniclip/input/MCKeyboard;->activity:Lcom/miniclip/framework/MiniclipAndroidActivity;

    sget-object v1, Lcom/miniclip/framework/ThreadingContext;->UiThread:Lcom/miniclip/framework/ThreadingContext;

    new-instance v2, Lcom/miniclip/input/MCKeyboard$14;

    invoke-direct {v2, p0}, Lcom/miniclip/input/MCKeyboard$14;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Lcom/miniclip/framework/MiniclipAndroidActivity;->queueEvent(Lcom/miniclip/framework/ThreadingContext;Ljava/lang/Runnable;)V

    .line 364
    return-void
.end method

.method public static setKeyboardInputStyle(IIF)V
    .locals 3
    .param p0, "background"    # I
    .param p1, "text"    # I
    .param p2, "size"    # F

    .prologue
    .line 302
    sget-object v0, Lcom/miniclip/input/MCKeyboard;->activity:Lcom/miniclip/framework/MiniclipAndroidActivity;

    sget-object v1, Lcom/miniclip/framework/ThreadingContext;->UiThread:Lcom/miniclip/framework/ThreadingContext;

    new-instance v2, Lcom/miniclip/input/MCKeyboard$9;

    invoke-direct {v2, p0, p1, p2}, Lcom/miniclip/input/MCKeyboard$9;-><init>(IIF)V

    invoke-virtual {v0, v1, v2}, Lcom/miniclip/framework/MiniclipAndroidActivity;->queueEvent(Lcom/miniclip/framework/ThreadingContext;Ljava/lang/Runnable;)V

    .line 309
    return-void
.end method

.method public static setKeyboardInputText(Ljava/lang/String;)V
    .locals 3
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 336
    sget-object v0, Lcom/miniclip/input/MCKeyboard;->activity:Lcom/miniclip/framework/MiniclipAndroidActivity;

    sget-object v1, Lcom/miniclip/framework/ThreadingContext;->UiThread:Lcom/miniclip/framework/ThreadingContext;

    new-instance v2, Lcom/miniclip/input/MCKeyboard$12;

    invoke-direct {v2, p0}, Lcom/miniclip/input/MCKeyboard$12;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/miniclip/framework/MiniclipAndroidActivity;->queueEvent(Lcom/miniclip/framework/ThreadingContext;Ljava/lang/Runnable;)V

    .line 341
    return-void
.end method

.method public static setKeyboardInputTypePassword(I)V
    .locals 5
    .param p0, "password"    # I

    .prologue
    .line 368
    const-string v0, "cocojava"

    const-string v1, "setKeyboardInputTypePassword: %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    sget-object v0, Lcom/miniclip/input/MCKeyboard;->activity:Lcom/miniclip/framework/MiniclipAndroidActivity;

    sget-object v1, Lcom/miniclip/framework/ThreadingContext;->UiThread:Lcom/miniclip/framework/ThreadingContext;

    new-instance v2, Lcom/miniclip/input/MCKeyboard$15;

    invoke-direct {v2, p0}, Lcom/miniclip/input/MCKeyboard$15;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Lcom/miniclip/framework/MiniclipAndroidActivity;->queueEvent(Lcom/miniclip/framework/ThreadingContext;Ljava/lang/Runnable;)V

    .line 377
    return-void
.end method

.method public static setKeyboardInputVisible(I)V
    .locals 5
    .param p0, "visible"    # I

    .prologue
    .line 313
    const-string v0, "setKeyboardInputVisible"

    const-string v1, "visible: %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    sget-object v0, Lcom/miniclip/input/MCKeyboard;->activity:Lcom/miniclip/framework/MiniclipAndroidActivity;

    sget-object v1, Lcom/miniclip/framework/ThreadingContext;->UiThread:Lcom/miniclip/framework/ThreadingContext;

    new-instance v2, Lcom/miniclip/input/MCKeyboard$10;

    invoke-direct {v2, p0}, Lcom/miniclip/input/MCKeyboard$10;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Lcom/miniclip/framework/MiniclipAndroidActivity;->queueEvent(Lcom/miniclip/framework/ThreadingContext;Ljava/lang/Runnable;)V

    .line 322
    return-void
.end method

.method public static setKeyboardInputVisibleDelayed(II)V
    .locals 4
    .param p0, "visible"    # I
    .param p1, "millisecs"    # I

    .prologue
    .line 326
    sget-object v0, Lcom/miniclip/input/MCKeyboard;->mKeyboardHandler:Landroid/os/Handler;

    new-instance v1, Lcom/miniclip/input/MCKeyboard$11;

    invoke-direct {v1, p0}, Lcom/miniclip/input/MCKeyboard$11;-><init>(I)V

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 332
    return-void
.end method


# virtual methods
.method public onPause()V
    .locals 0

    .prologue
    .line 436
    invoke-super {p0}, Lcom/miniclip/framework/AbstractActivityListener;->onPause()V

    .line 437
    invoke-static {}, Lcom/miniclip/input/MCKeyboard;->keyboardInput_Hide()V

    .line 438
    return-void
.end method
