.class public final Lcom/fyber/c/a/a;
.super Landroid/widget/LinearLayout;
.source "MicroBrowser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fyber/c/a/a$a;,
        Lcom/fyber/c/a/a$c;,
        Lcom/fyber/c/a/a$b;
    }
.end annotation


# instance fields
.field private a:Landroid/webkit/WebView;

.field private b:Z

.field private c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private e:Lcom/fyber/c/a/a$b;

.field private f:Lcom/fyber/c/a/a$a;

.field private g:Lcom/fyber/c/a/a$c;


# direct methods
.method private constructor <init>(Landroid/app/Activity;)V
    .locals 10

    .prologue
    const/16 v2, 0xa

    const/4 v9, -0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 63
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 52
    iput-boolean v8, p0, Lcom/fyber/c/a/a;->b:Z

    .line 54
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/fyber/c/a/a;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 55
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/fyber/c/a/a;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1074
    const-string v0, "microBrowser"

    invoke-virtual {p0, v0}, Lcom/fyber/c/a/a;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1078
    const-string v0, "#333333"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/fyber/c/a/a;->setBackgroundColor(I)V

    .line 1079
    invoke-virtual {p0, v8}, Lcom/fyber/c/a/a;->setOrientation(I)V

    .line 1081
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 1082
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v6, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1083
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1084
    invoke-virtual {v0, v7, v2, v7, v2}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 1085
    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 1087
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1088
    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1089
    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1090
    new-instance v2, Lcom/fyber/c/b/b;

    invoke-direct {v2, p1}, Lcom/fyber/c/b/b;-><init>(Landroid/content/Context;)V

    .line 1091
    invoke-virtual {v2, v1}, Lcom/fyber/c/b/b;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1092
    new-instance v1, Lcom/fyber/c/a/a$1;

    invoke-direct {v1, p0}, Lcom/fyber/c/a/a$1;-><init>(Lcom/fyber/c/a/a;)V

    invoke-virtual {v2, v1}, Lcom/fyber/c/b/b;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1099
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v6, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1100
    const/16 v3, 0xe

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1102
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1103
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1104
    const/16 v1, 0x11

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 1105
    const/high16 v1, 0x41880000    # 17.0f

    invoke-virtual {v3, v8, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1106
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1107
    invoke-virtual {v3}, Landroid/widget/TextView;->setSingleLine()V

    .line 1108
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1109
    const/16 v1, 0x3039

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setId(I)V

    .line 1110
    const-string v1, "microBrowserTitle"

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1111
    const/high16 v1, 0x42480000    # 50.0f

    invoke-virtual {p0}, Lcom/fyber/c/a/a;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-static {v8, v1, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    .line 1112
    const/high16 v4, 0x40a00000    # 5.0f

    invoke-virtual {p0}, Lcom/fyber/c/a/a;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    invoke-static {v8, v4, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    float-to-int v4, v4

    .line 1113
    invoke-virtual {v3, v1, v4, v1, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1115
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v6, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1116
    const/16 v4, 0xe

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1117
    const/4 v4, 0x3

    const/16 v5, 0x3039

    invoke-virtual {v1, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1119
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1120
    const/16 v5, 0x11

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 1121
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1122
    const/high16 v1, 0x41500000    # 13.0f

    invoke-virtual {v4, v8, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1123
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1124
    sget-object v1, Lcom/fyber/Fyber$Settings$UIStringIdentifier;->RV_LOADING_MESSAGE:Lcom/fyber/Fyber$Settings$UIStringIdentifier;

    invoke-static {v1}, Lcom/fyber/utils/t;->a(Lcom/fyber/Fyber$Settings$UIStringIdentifier;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1125
    const-string v1, "microBrowserUrl"

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1128
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 1129
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 1130
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 1132
    invoke-virtual {p0, v0}, Lcom/fyber/c/a/a;->addView(Landroid/view/View;)V

    .line 1134
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1135
    new-instance v1, Landroid/webkit/WebView;

    invoke-direct {v1, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/fyber/c/a/a;->a:Landroid/webkit/WebView;

    .line 1136
    iget-object v1, p0, Lcom/fyber/c/a/a;->a:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1137
    iget-object v0, p0, Lcom/fyber/c/a/a;->a:Landroid/webkit/WebView;

    invoke-virtual {v0, v7}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    .line 1138
    iget-object v0, p0, Lcom/fyber/c/a/a;->a:Landroid/webkit/WebView;

    invoke-static {v0}, Lcom/fyber/utils/aa;->b(Landroid/webkit/WebView;)V

    .line 1139
    iget-object v0, p0, Lcom/fyber/c/a/a;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-static {v0}, Lcom/fyber/utils/aa;->a(Landroid/webkit/WebSettings;)V

    .line 1140
    iget-object v0, p0, Lcom/fyber/c/a/a;->a:Landroid/webkit/WebView;

    invoke-static {v0}, Lcom/fyber/utils/aa;->a(Landroid/webkit/WebView;)V

    .line 1142
    iget-object v0, p0, Lcom/fyber/c/a/a;->a:Landroid/webkit/WebView;

    new-instance v1, Landroid/webkit/WebChromeClient;

    invoke-direct {v1}, Landroid/webkit/WebChromeClient;-><init>()V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 1144
    iget-object v0, p0, Lcom/fyber/c/a/a;->a:Landroid/webkit/WebView;

    new-instance v1, Lcom/fyber/c/a/a$2;

    invoke-direct {v1, p0, v4, v3}, Lcom/fyber/c/a/a$2;-><init>(Lcom/fyber/c/a/a;Landroid/widget/TextView;Landroid/widget/TextView;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 1190
    iget-object v0, p0, Lcom/fyber/c/a/a;->a:Landroid/webkit/WebView;

    invoke-virtual {p0, v0}, Lcom/fyber/c/a/a;->addView(Landroid/view/View;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/fyber/c/a/a;-><init>(Landroid/app/Activity;)V

    .line 70
    invoke-direct {p0, p2}, Lcom/fyber/c/a/a;->a(Ljava/lang/String;)V

    .line 71
    return-void
.end method

.method static synthetic a(Lcom/fyber/c/a/a;)V
    .locals 1

    .prologue
    .line 40
    .line 1228
    iget-object v0, p0, Lcom/fyber/c/a/a;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onPause()V

    .line 1230
    iget-object v0, p0, Lcom/fyber/c/a/a;->e:Lcom/fyber/c/a/a$b;

    if-eqz v0, :cond_0

    .line 1231
    iget-object v0, p0, Lcom/fyber/c/a/a;->e:Lcom/fyber/c/a/a$b;

    invoke-interface {v0}, Lcom/fyber/c/a/a$b;->a()V

    .line 40
    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 194
    invoke-static {}, Lcom/fyber/Fyber;->getConfigs()Lcom/fyber/Fyber$a;

    new-instance v0, Lcom/fyber/c/a/a$3;

    invoke-direct {v0, p0, p1}, Lcom/fyber/c/a/a$3;-><init>(Lcom/fyber/c/a/a;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/fyber/Fyber$a;->a(Lcom/fyber/utils/d;)V

    .line 201
    return-void
.end method

.method static synthetic b(Lcom/fyber/c/a/a;)Lcom/fyber/c/a/a$c;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/fyber/c/a/a;->g:Lcom/fyber/c/a/a$c;

    return-object v0
.end method

.method static synthetic c(Lcom/fyber/c/a/a;)Lcom/fyber/c/a/a$a;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/fyber/c/a/a;->f:Lcom/fyber/c/a/a$a;

    return-object v0
.end method

.method static synthetic d(Lcom/fyber/c/a/a;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/fyber/c/a/a;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic e(Lcom/fyber/c/a/a;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/fyber/c/a/a;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic f(Lcom/fyber/c/a/a;)Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/fyber/c/a/a;->a:Landroid/webkit/WebView;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 204
    iget-object v0, p0, Lcom/fyber/c/a/a;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->copyBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v0

    .line 207
    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->getSize()I

    move-result v1

    if-le v1, v2, :cond_0

    .line 208
    iget-object v1, p0, Lcom/fyber/c/a/a;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 209
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebBackForwardList;->getItemAtIndex(I)Landroid/webkit/WebHistoryItem;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebHistoryItem;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/fyber/c/a/a;->a(Ljava/lang/String;)V

    .line 211
    :cond_0
    return-void
.end method

.method public final a(Lcom/fyber/c/a/a$a;)V
    .locals 0

    .prologue
    .line 261
    iput-object p1, p0, Lcom/fyber/c/a/a;->f:Lcom/fyber/c/a/a$a;

    .line 262
    return-void
.end method

.method public final a(Lcom/fyber/c/a/a$b;)V
    .locals 0

    .prologue
    .line 253
    iput-object p1, p0, Lcom/fyber/c/a/a;->e:Lcom/fyber/c/a/a$b;

    .line 254
    return-void
.end method

.method public final a(Lcom/fyber/c/a/a$c;)V
    .locals 0

    .prologue
    .line 257
    iput-object p1, p0, Lcom/fyber/c/a/a;->g:Lcom/fyber/c/a/a$c;

    .line 258
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 214
    const-string v0, "about:blank"

    invoke-direct {p0, v0}, Lcom/fyber/c/a/a;->a(Ljava/lang/String;)V

    .line 215
    return-void
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 218
    iget-boolean v0, p0, Lcom/fyber/c/a/a;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fyber/c/a/a;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/fyber/c/a/a;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 220
    const/4 v0, 0x1

    .line 222
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final onVisibilityChanged(Landroid/view/View;I)V
    .locals 3
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 241
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onVisibilityChanged(Landroid/view/View;I)V

    .line 242
    if-ne p1, p0, :cond_0

    .line 243
    if-nez p2, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/fyber/c/a/a;->b:Z

    .line 244
    iget-boolean v0, p0, Lcom/fyber/c/a/a;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fyber/c/a/a;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/fyber/c/a/a;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onResume()V

    .line 247
    iget-object v0, p0, Lcom/fyber/c/a/a;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V

    .line 250
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 243
    goto :goto_0
.end method
