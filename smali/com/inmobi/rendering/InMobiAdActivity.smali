.class public Lcom/inmobi/rendering/InMobiAdActivity;
.super Landroid/app/Activity;
.source "InMobiAdActivity.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ClickableViewAccessibility"
    }
.end annotation

.annotation build Landroid/annotation/TargetApi;
    value = 0xf
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/rendering/InMobiAdActivity$b;,
        Lcom/inmobi/rendering/InMobiAdActivity$a;
    }
.end annotation


# static fields
.field public static a:Ljava/util/Map;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/inmobi/rendering/InMobiAdActivity$a;",
            ">;"
        }
    .end annotation
.end field

.field public static b:Ljava/util/Map;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field public static c:Ljava/lang/Integer;

.field public static d:Ljava/util/Map;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/inmobi/rendering/InMobiAdActivity$b;",
            ">;"
        }
    .end annotation
.end field

.field public static e:Ljava/lang/Integer;

.field private static final f:Ljava/lang/String;

.field private static g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/inmobi/ads/AdContainer;",
            ">;"
        }
    .end annotation
.end field

.field private static h:Lcom/inmobi/rendering/RenderView;


# instance fields
.field private i:Lcom/inmobi/ads/AdContainer;

.field private j:Lcom/inmobi/rendering/RenderView;

.field private k:Lcom/inmobi/rendering/CustomView;

.field private l:Lcom/inmobi/rendering/CustomView;

.field private m:Lcom/inmobi/ads/NativeStrandVideoView;

.field private n:I

.field private o:I

.field private p:Z

.field private q:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 91
    const-class v0, Lcom/inmobi/rendering/InMobiAdActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/rendering/InMobiAdActivity;->f:Ljava/lang/String;

    .line 94
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/inmobi/rendering/InMobiAdActivity;->g:Ljava/util/Map;

    .line 124
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/inmobi/rendering/InMobiAdActivity;->a:Ljava/util/Map;

    .line 126
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/inmobi/rendering/InMobiAdActivity;->b:Ljava/util/Map;

    .line 127
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/inmobi/rendering/InMobiAdActivity;->c:Ljava/lang/Integer;

    .line 129
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/inmobi/rendering/InMobiAdActivity;->d:Ljava/util/Map;

    .line 130
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/inmobi/rendering/InMobiAdActivity;->e:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 89
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 104
    iput-boolean v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->p:Z

    .line 105
    iput-boolean v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->q:Z

    return-void
.end method

.method public static a(Landroid/content/Intent;Lcom/inmobi/rendering/InMobiAdActivity$a;)I
    .locals 2

    .prologue
    .line 153
    sget-object v0, Lcom/inmobi/rendering/InMobiAdActivity;->c:Ljava/lang/Integer;

    sget-object v0, Lcom/inmobi/rendering/InMobiAdActivity;->c:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/inmobi/rendering/InMobiAdActivity;->c:Ljava/lang/Integer;

    .line 154
    sget-object v0, Lcom/inmobi/rendering/InMobiAdActivity;->a:Ljava/util/Map;

    sget-object v1, Lcom/inmobi/rendering/InMobiAdActivity;->c:Ljava/lang/Integer;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    sget-object v0, Lcom/inmobi/rendering/InMobiAdActivity;->b:Ljava/util/Map;

    sget-object v1, Lcom/inmobi/rendering/InMobiAdActivity;->c:Ljava/lang/Integer;

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    sget-object v0, Lcom/inmobi/rendering/InMobiAdActivity;->c:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static a(Lcom/inmobi/ads/AdContainer;)I
    .locals 3

    .prologue
    .line 133
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 134
    sget-object v1, Lcom/inmobi/rendering/InMobiAdActivity;->g:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    return v0
.end method

.method private static a(Lcom/inmobi/rendering/InMobiAdActivity$b;)I
    .locals 2

    .prologue
    .line 178
    sget-object v0, Lcom/inmobi/rendering/InMobiAdActivity;->e:Ljava/lang/Integer;

    sget-object v0, Lcom/inmobi/rendering/InMobiAdActivity;->e:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/inmobi/rendering/InMobiAdActivity;->e:Ljava/lang/Integer;

    .line 179
    sget-object v0, Lcom/inmobi/rendering/InMobiAdActivity;->d:Ljava/util/Map;

    sget-object v1, Lcom/inmobi/rendering/InMobiAdActivity;->e:Ljava/lang/Integer;

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    sget-object v0, Lcom/inmobi/rendering/InMobiAdActivity;->e:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/inmobi/rendering/InMobiAdActivity;)Lcom/inmobi/rendering/RenderView;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->j:Lcom/inmobi/rendering/RenderView;

    return-object v0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    sget-object v0, Lcom/inmobi/rendering/InMobiAdActivity;->f:Ljava/lang/String;

    return-object v0
.end method

.method private a(Landroid/view/ViewGroup;)V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 560
    .line 561
    invoke-static {}, Lcom/inmobi/commons/core/utilities/info/DisplayInfo;->a()Lcom/inmobi/commons/core/utilities/info/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/core/utilities/info/c;->c()F

    move-result v0

    .line 564
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 565
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v3, 0x42400000    # 48.0f

    mul-float/2addr v3, v0

    float-to-int v3, v3

    invoke-direct {v2, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 568
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 570
    const v3, 0xfffd

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setId(I)V

    .line 571
    const/high16 v3, 0x42c80000    # 100.0f

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setWeightSum(F)V

    .line 572
    const v3, 0x108009a

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 573
    const v3, -0x777778

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 574
    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 575
    invoke-virtual {p1, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 577
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 580
    const/high16 v3, 0x41c80000    # 25.0f

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 583
    new-instance v3, Lcom/inmobi/rendering/CustomView;

    sget-object v4, Lcom/inmobi/rendering/CustomView$SwitchIconType;->CLOSE_ICON:Lcom/inmobi/rendering/CustomView$SwitchIconType;

    invoke-direct {v3, p0, v0, v4}, Lcom/inmobi/rendering/CustomView;-><init>(Landroid/content/Context;FLcom/inmobi/rendering/CustomView$SwitchIconType;)V

    .line 585
    new-instance v4, Lcom/inmobi/rendering/InMobiAdActivity$1;

    invoke-direct {v4, p0}, Lcom/inmobi/rendering/InMobiAdActivity$1;-><init>(Lcom/inmobi/rendering/InMobiAdActivity;)V

    invoke-virtual {v3, v4}, Lcom/inmobi/rendering/CustomView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 600
    invoke-virtual {v1, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 603
    new-instance v3, Lcom/inmobi/rendering/CustomView;

    sget-object v4, Lcom/inmobi/rendering/CustomView$SwitchIconType;->REFRESH:Lcom/inmobi/rendering/CustomView$SwitchIconType;

    invoke-direct {v3, p0, v0, v4}, Lcom/inmobi/rendering/CustomView;-><init>(Landroid/content/Context;FLcom/inmobi/rendering/CustomView$SwitchIconType;)V

    .line 605
    new-instance v4, Lcom/inmobi/rendering/InMobiAdActivity$2;

    invoke-direct {v4, p0}, Lcom/inmobi/rendering/InMobiAdActivity$2;-><init>(Lcom/inmobi/rendering/InMobiAdActivity;)V

    invoke-virtual {v3, v4}, Lcom/inmobi/rendering/CustomView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 619
    invoke-virtual {v1, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 622
    new-instance v3, Lcom/inmobi/rendering/CustomView;

    sget-object v4, Lcom/inmobi/rendering/CustomView$SwitchIconType;->BACK:Lcom/inmobi/rendering/CustomView$SwitchIconType;

    invoke-direct {v3, p0, v0, v4}, Lcom/inmobi/rendering/CustomView;-><init>(Landroid/content/Context;FLcom/inmobi/rendering/CustomView$SwitchIconType;)V

    .line 624
    new-instance v4, Lcom/inmobi/rendering/InMobiAdActivity$3;

    invoke-direct {v4, p0}, Lcom/inmobi/rendering/InMobiAdActivity$3;-><init>(Lcom/inmobi/rendering/InMobiAdActivity;)V

    invoke-virtual {v3, v4}, Lcom/inmobi/rendering/CustomView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 643
    invoke-virtual {v1, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 646
    new-instance v3, Lcom/inmobi/rendering/CustomView;

    sget-object v4, Lcom/inmobi/rendering/CustomView$SwitchIconType;->FORWARD_INACTIVE:Lcom/inmobi/rendering/CustomView$SwitchIconType;

    invoke-direct {v3, p0, v0, v4}, Lcom/inmobi/rendering/CustomView;-><init>(Landroid/content/Context;FLcom/inmobi/rendering/CustomView$SwitchIconType;)V

    .line 648
    new-instance v0, Lcom/inmobi/rendering/InMobiAdActivity$4;

    invoke-direct {v0, p0}, Lcom/inmobi/rendering/InMobiAdActivity$4;-><init>(Lcom/inmobi/rendering/InMobiAdActivity;)V

    invoke-virtual {v3, v0}, Lcom/inmobi/rendering/CustomView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 664
    invoke-virtual {v1, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 665
    return-void
.end method

.method public static a(Lcom/inmobi/rendering/RenderView;)V
    .locals 0

    .prologue
    .line 149
    sput-object p0, Lcom/inmobi/rendering/InMobiAdActivity;->h:Lcom/inmobi/rendering/RenderView;

    .line 150
    return-void
.end method

.method public static a(Ljava/lang/Object;)V
    .locals 4
    .param p0    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 141
    sget-object v0, Lcom/inmobi/rendering/InMobiAdActivity;->g:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 142
    if-nez v0, :cond_0

    .line 143
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/rendering/InMobiAdActivity;->f:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to remove ad container with key:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 144
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 143
    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    :cond_0
    return-void
.end method

.method public static a([Ljava/lang/String;Lcom/inmobi/rendering/InMobiAdActivity$b;)V
    .locals 5

    .prologue
    .line 161
    :try_start_0
    invoke-static {}, Lcom/inmobi/commons/a/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    .line 175
    :cond_0
    :goto_0
    return-void

    .line 165
    :cond_1
    invoke-static {p1}, Lcom/inmobi/rendering/InMobiAdActivity;->a(Lcom/inmobi/rendering/InMobiAdActivity$b;)I

    move-result v0

    .line 166
    new-instance v1, Landroid/content/Intent;

    invoke-static {}, Lcom/inmobi/commons/a/a;->b()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/inmobi/rendering/InMobiAdActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 167
    const-string v2, "com.inmobi.rendering.InMobiAdActivity.EXTRA_AD_ACTIVITY_TYPE"

    const/16 v3, 0x68

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 168
    const-string v2, "id"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 169
    const-string v0, "permissions"

    invoke-virtual {v1, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 170
    invoke-static {}, Lcom/inmobi/commons/a/a;->b()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/inmobi/commons/a/a;->a(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 171
    :catch_0
    move-exception v0

    .line 172
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/rendering/InMobiAdActivity;->f:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SDK encountered unexpected error while requesting permissions; "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 173
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 172
    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/inmobi/rendering/InMobiAdActivity;Z)Z
    .locals 0

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/inmobi/rendering/InMobiAdActivity;->p:Z

    return p1
.end method

.method static synthetic b(Lcom/inmobi/rendering/InMobiAdActivity;)Lcom/inmobi/ads/AdContainer;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->i:Lcom/inmobi/ads/AdContainer;

    return-object v0
.end method

.method private b()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 545
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 546
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 550
    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 551
    const/4 v2, 0x2

    const v3, 0xfffd

    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 552
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 553
    iget-object v2, p0, Lcom/inmobi/rendering/InMobiAdActivity;->j:Lcom/inmobi/rendering/RenderView;

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 555
    invoke-direct {p0, v0}, Lcom/inmobi/rendering/InMobiAdActivity;->a(Landroid/view/ViewGroup;)V

    .line 556
    invoke-virtual {p0, v0}, Lcom/inmobi/rendering/InMobiAdActivity;->setContentView(Landroid/view/View;)V

    .line 557
    return-void
.end method

.method private c()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    const/high16 v6, 0x42480000    # 50.0f

    const/4 v7, -0x1

    .line 668
    const v0, 0x1020002

    invoke-virtual {p0, v0}, Lcom/inmobi/rendering/InMobiAdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 669
    new-instance v3, Landroid/widget/RelativeLayout;

    invoke-direct {v3, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 671
    const v1, 0xfffe

    invoke-virtual {v3, v1}, Landroid/widget/RelativeLayout;->setId(I)V

    .line 674
    invoke-static {}, Lcom/inmobi/commons/core/utilities/info/DisplayInfo;->a()Lcom/inmobi/commons/core/utilities/info/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/commons/core/utilities/info/c;->c()F

    move-result v1

    .line 675
    sget-object v2, Lcom/inmobi/ads/AdUnit$AdMarkupType;->AD_MARKUP_TYPE_INM_HTML:Lcom/inmobi/ads/AdUnit$AdMarkupType;

    iget-object v4, p0, Lcom/inmobi/rendering/InMobiAdActivity;->i:Lcom/inmobi/ads/AdContainer;

    invoke-interface {v4}, Lcom/inmobi/ads/AdContainer;->getMarkupType()Lcom/inmobi/ads/AdUnit$AdMarkupType;

    move-result-object v4

    if-ne v2, v4, :cond_2

    .line 676
    invoke-virtual {v3, v8}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 678
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 681
    const/16 v4, 0xa

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 683
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    mul-float v5, v6, v1

    float-to-int v5, v5

    mul-float/2addr v6, v1

    float-to-int v6, v6

    invoke-direct {v4, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 686
    const/16 v5, 0xb

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 687
    new-instance v5, Lcom/inmobi/rendering/CustomView;

    sget-object v6, Lcom/inmobi/rendering/CustomView$SwitchIconType;->CLOSE_BUTTON:Lcom/inmobi/rendering/CustomView$SwitchIconType;

    invoke-direct {v5, p0, v1, v6}, Lcom/inmobi/rendering/CustomView;-><init>(Landroid/content/Context;FLcom/inmobi/rendering/CustomView$SwitchIconType;)V

    iput-object v5, p0, Lcom/inmobi/rendering/InMobiAdActivity;->k:Lcom/inmobi/rendering/CustomView;

    .line 689
    iget-object v5, p0, Lcom/inmobi/rendering/InMobiAdActivity;->k:Lcom/inmobi/rendering/CustomView;

    const v6, 0xfffc

    invoke-virtual {v5, v6}, Lcom/inmobi/rendering/CustomView;->setId(I)V

    .line 690
    iget-object v5, p0, Lcom/inmobi/rendering/InMobiAdActivity;->k:Lcom/inmobi/rendering/CustomView;

    new-instance v6, Lcom/inmobi/rendering/InMobiAdActivity$5;

    invoke-direct {v6, p0}, Lcom/inmobi/rendering/InMobiAdActivity$5;-><init>(Lcom/inmobi/rendering/InMobiAdActivity;)V

    invoke-virtual {v5, v6}, Lcom/inmobi/rendering/CustomView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 705
    new-instance v5, Lcom/inmobi/rendering/CustomView;

    sget-object v6, Lcom/inmobi/rendering/CustomView$SwitchIconType;->CLOSE_TRANSPARENT:Lcom/inmobi/rendering/CustomView$SwitchIconType;

    invoke-direct {v5, p0, v1, v6}, Lcom/inmobi/rendering/CustomView;-><init>(Landroid/content/Context;FLcom/inmobi/rendering/CustomView$SwitchIconType;)V

    iput-object v5, p0, Lcom/inmobi/rendering/InMobiAdActivity;->l:Lcom/inmobi/rendering/CustomView;

    .line 707
    iget-object v1, p0, Lcom/inmobi/rendering/InMobiAdActivity;->l:Lcom/inmobi/rendering/CustomView;

    const v5, 0xfffb

    invoke-virtual {v1, v5}, Lcom/inmobi/rendering/CustomView;->setId(I)V

    .line 708
    iget-object v1, p0, Lcom/inmobi/rendering/InMobiAdActivity;->l:Lcom/inmobi/rendering/CustomView;

    new-instance v5, Lcom/inmobi/rendering/InMobiAdActivity$6;

    invoke-direct {v5, p0}, Lcom/inmobi/rendering/InMobiAdActivity$6;-><init>(Lcom/inmobi/rendering/InMobiAdActivity;)V

    invoke-virtual {v1, v5}, Lcom/inmobi/rendering/CustomView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 723
    iget-object v1, p0, Lcom/inmobi/rendering/InMobiAdActivity;->i:Lcom/inmobi/ads/AdContainer;

    invoke-interface {v1}, Lcom/inmobi/ads/AdContainer;->getViewableAd()Lcom/inmobi/ads/ViewableAd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/ads/ViewableAd;->a()Landroid/view/View;

    move-result-object v5

    .line 725
    if-eqz v5, :cond_1

    .line 726
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 727
    if-eqz v1, :cond_0

    .line 728
    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 731
    :cond_0
    invoke-virtual {v3, v5, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 732
    iget-object v1, p0, Lcom/inmobi/rendering/InMobiAdActivity;->k:Lcom/inmobi/rendering/CustomView;

    invoke-virtual {v3, v1, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 733
    iget-object v1, p0, Lcom/inmobi/rendering/InMobiAdActivity;->l:Lcom/inmobi/rendering/CustomView;

    invoke-virtual {v3, v1, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 737
    iget-object v1, p0, Lcom/inmobi/rendering/InMobiAdActivity;->i:Lcom/inmobi/ads/AdContainer;

    check-cast v1, Lcom/inmobi/rendering/RenderView;

    iget-object v2, p0, Lcom/inmobi/rendering/InMobiAdActivity;->i:Lcom/inmobi/ads/AdContainer;

    check-cast v2, Lcom/inmobi/rendering/RenderView;

    .line 738
    invoke-virtual {v2}, Lcom/inmobi/rendering/RenderView;->i()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/inmobi/rendering/RenderView;->b(Z)V

    .line 739
    iget-object v1, p0, Lcom/inmobi/rendering/InMobiAdActivity;->i:Lcom/inmobi/ads/AdContainer;

    check-cast v1, Lcom/inmobi/rendering/RenderView;

    iget-object v2, p0, Lcom/inmobi/rendering/InMobiAdActivity;->i:Lcom/inmobi/ads/AdContainer;

    check-cast v2, Lcom/inmobi/rendering/RenderView;

    .line 740
    invoke-virtual {v2}, Lcom/inmobi/rendering/RenderView;->h()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/inmobi/rendering/RenderView;->c(Z)V

    .line 783
    :cond_1
    :goto_0
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 786
    :goto_1
    return-void

    .line 742
    :cond_2
    sget-object v1, Lcom/inmobi/ads/AdUnit$AdMarkupType;->AD_MARKUP_TYPE_INM_JSON:Lcom/inmobi/ads/AdUnit$AdMarkupType;

    iget-object v2, p0, Lcom/inmobi/rendering/InMobiAdActivity;->i:Lcom/inmobi/ads/AdContainer;

    invoke-interface {v2}, Lcom/inmobi/ads/AdContainer;->getMarkupType()Lcom/inmobi/ads/AdUnit$AdMarkupType;

    move-result-object v2

    if-ne v1, v2, :cond_6

    .line 743
    iget-object v1, p0, Lcom/inmobi/rendering/InMobiAdActivity;->i:Lcom/inmobi/ads/AdContainer;

    invoke-interface {v1}, Lcom/inmobi/ads/AdContainer;->getRenderingProperties()Lcom/inmobi/ads/AdContainer$RenderingProperties;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/ads/AdContainer$RenderingProperties;->a()Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;

    move-result-object v4

    .line 744
    const/high16 v1, -0x1000000

    invoke-virtual {v3, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 745
    iget-object v1, p0, Lcom/inmobi/rendering/InMobiAdActivity;->i:Lcom/inmobi/ads/AdContainer;

    invoke-interface {v1}, Lcom/inmobi/ads/AdContainer;->getDataModel()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/inmobi/ads/NativeV2DataModel;

    .line 746
    invoke-virtual {v1}, Lcom/inmobi/ads/NativeV2DataModel;->b()Lcom/inmobi/ads/aj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/ads/aj;->b()Lcom/inmobi/ads/NativeStrandAssetStyle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/ads/NativeStrandAssetStyle;->a()Landroid/graphics/Point;

    move-result-object v5

    .line 747
    new-instance v1, Lcom/inmobi/ads/c;

    invoke-direct {v1}, Lcom/inmobi/ads/c;-><init>()V

    .line 748
    invoke-static {}, Lcom/inmobi/commons/core/configs/b;->a()Lcom/inmobi/commons/core/configs/b;

    move-result-object v2

    invoke-virtual {v2, v1, v9}, Lcom/inmobi/commons/core/configs/b;->a(Lcom/inmobi/commons/core/configs/a;Lcom/inmobi/commons/core/configs/b$b;)V

    .line 749
    iget-object v1, p0, Lcom/inmobi/rendering/InMobiAdActivity;->i:Lcom/inmobi/ads/AdContainer;

    invoke-interface {v1}, Lcom/inmobi/ads/AdContainer;->getViewableAd()Lcom/inmobi/ads/ViewableAd;

    move-result-object v1

    .line 750
    invoke-virtual {v1, v9, v3, v8}, Lcom/inmobi/ads/ViewableAd;->a(Landroid/view/View;Landroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 753
    iget-object v1, p0, Lcom/inmobi/rendering/InMobiAdActivity;->i:Lcom/inmobi/ads/AdContainer;

    .line 754
    invoke-interface {v1}, Lcom/inmobi/ads/AdContainer;->getVideoContainerView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/inmobi/ads/NativeStrandVideoWrapper;

    .line 755
    if-eqz v1, :cond_4

    .line 756
    invoke-virtual {v1}, Lcom/inmobi/ads/NativeStrandVideoWrapper;->getVideoView()Lcom/inmobi/ads/NativeStrandVideoView;

    move-result-object v1

    iput-object v1, p0, Lcom/inmobi/rendering/InMobiAdActivity;->m:Lcom/inmobi/ads/NativeStrandVideoView;

    .line 757
    iget-object v1, p0, Lcom/inmobi/rendering/InMobiAdActivity;->m:Lcom/inmobi/ads/NativeStrandVideoView;

    invoke-virtual {v1}, Lcom/inmobi/ads/NativeStrandVideoView;->requestFocus()Z

    .line 758
    iget-object v1, p0, Lcom/inmobi/rendering/InMobiAdActivity;->m:Lcom/inmobi/ads/NativeStrandVideoView;

    invoke-virtual {v1}, Lcom/inmobi/ads/NativeStrandVideoView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/inmobi/ads/av;

    .line 759
    invoke-virtual {v1}, Lcom/inmobi/ads/av;->i()Lcom/inmobi/ads/NativeV2Asset;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 760
    invoke-virtual {v1}, Lcom/inmobi/ads/av;->i()Lcom/inmobi/ads/NativeV2Asset;

    move-result-object v2

    check-cast v2, Lcom/inmobi/ads/av;

    invoke-virtual {v1, v2}, Lcom/inmobi/ads/av;->a(Lcom/inmobi/ads/av;)V

    .line 762
    :cond_3
    sget-object v2, Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;->PLACEMENT_TYPE_INLINE:Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;

    if-ne v2, v4, :cond_5

    .line 763
    invoke-virtual {v1}, Lcom/inmobi/ads/av;->v()Ljava/util/Map;

    move-result-object v1

    const-string v2, "placementType"

    sget-object v4, Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;->PLACEMENT_TYPE_INLINE:Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 768
    :goto_2
    if-eqz v6, :cond_4

    .line 769
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, v5, Landroid/graphics/Point;->x:I

    iget v4, v5, Landroid/graphics/Point;->y:I

    invoke-direct {v1, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 770
    invoke-virtual {v3, v6, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 773
    :cond_4
    iget-object v1, p0, Lcom/inmobi/rendering/InMobiAdActivity;->i:Lcom/inmobi/ads/AdContainer;

    invoke-interface {v1}, Lcom/inmobi/ads/AdContainer;->setRequestedScreenOrientation()V

    goto/16 :goto_0

    .line 765
    :cond_5
    invoke-virtual {v1}, Lcom/inmobi/ads/av;->v()Ljava/util/Map;

    move-result-object v1

    const-string v2, "placementType"

    sget-object v4, Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;->PLACEMENT_TYPE_FULLSCREEN:Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 775
    :cond_6
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/rendering/InMobiAdActivity;->f:Ljava/lang/String;

    const-string v2, "Unknown markup type"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 776
    iget-object v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->i:Lcom/inmobi/ads/AdContainer;

    invoke-interface {v0}, Lcom/inmobi/ads/AdContainer;->getFullScreenEventsListener()Lcom/inmobi/ads/AdContainer$a;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 777
    iget-object v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->i:Lcom/inmobi/ads/AdContainer;

    invoke-interface {v0}, Lcom/inmobi/ads/AdContainer;->getFullScreenEventsListener()Lcom/inmobi/ads/AdContainer$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/inmobi/ads/AdContainer$a;->a()V

    .line 779
    :cond_7
    invoke-virtual {p0}, Lcom/inmobi/rendering/InMobiAdActivity;->finish()V

    goto/16 :goto_1
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    .prologue
    .line 832
    iput-boolean p1, p0, Lcom/inmobi/rendering/InMobiAdActivity;->p:Z

    .line 833
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .prologue
    .line 790
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 791
    sget-object v0, Lcom/inmobi/rendering/InMobiAdActivity;->a:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/rendering/InMobiAdActivity$a;

    .line 792
    if-eqz v0, :cond_0

    .line 793
    sget-object v1, Lcom/inmobi/rendering/InMobiAdActivity;->b:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 794
    invoke-interface {v0, p2, p3}, Lcom/inmobi/rendering/InMobiAdActivity$a;->a(ILandroid/content/Intent;)V

    .line 795
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->p:Z

    .line 796
    invoke-virtual {p0}, Lcom/inmobi/rendering/InMobiAdActivity;->finish()V

    .line 798
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 837
    iget v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->n:I

    const/16 v1, 0x66

    if-ne v0, v1, :cond_5

    .line 838
    iget-object v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->i:Lcom/inmobi/ads/AdContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->i:Lcom/inmobi/ads/AdContainer;

    invoke-interface {v0}, Lcom/inmobi/ads/AdContainer;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 891
    :cond_0
    :goto_0
    return-void

    .line 839
    :cond_1
    const/16 v0, 0xc8

    iget v1, p0, Lcom/inmobi/rendering/InMobiAdActivity;->o:I

    if-ne v0, v1, :cond_2

    .line 840
    iget-object v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->i:Lcom/inmobi/ads/AdContainer;

    check-cast v0, Lcom/inmobi/rendering/RenderView;

    .line 841
    if-eqz v0, :cond_0

    .line 842
    invoke-virtual {v0}, Lcom/inmobi/rendering/RenderView;->l()V

    .line 843
    invoke-virtual {v0}, Lcom/inmobi/rendering/RenderView;->j()Z

    move-result v1

    if-nez v1, :cond_0

    .line 846
    iput-boolean v2, p0, Lcom/inmobi/rendering/InMobiAdActivity;->p:Z

    .line 848
    :try_start_0
    invoke-virtual {v0}, Lcom/inmobi/rendering/RenderView;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 849
    :catch_0
    move-exception v0

    .line 850
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/rendering/InMobiAdActivity;->f:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Encountered unexpected error in processing close request: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 851
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 850
    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 852
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->DEBUG:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    const-string v1, "InMobi"

    const-string v2, "SDK encountered unexpected error in processing close request"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 857
    :cond_2
    iget-object v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->i:Lcom/inmobi/ads/AdContainer;

    check-cast v0, Lcom/inmobi/ads/at;

    .line 858
    if-eqz v0, :cond_0

    .line 859
    invoke-virtual {v0}, Lcom/inmobi/ads/at;->k()Lcom/inmobi/ads/NativeV2DataModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/ads/NativeV2DataModel;->d()Z

    move-result v1

    if-nez v1, :cond_0

    .line 862
    iput-boolean v2, p0, Lcom/inmobi/rendering/InMobiAdActivity;->p:Z

    .line 863
    iget-object v1, p0, Lcom/inmobi/rendering/InMobiAdActivity;->m:Lcom/inmobi/ads/NativeStrandVideoView;

    if-eqz v1, :cond_4

    .line 864
    iget-object v1, p0, Lcom/inmobi/rendering/InMobiAdActivity;->m:Lcom/inmobi/ads/NativeStrandVideoView;

    invoke-virtual {v1}, Lcom/inmobi/ads/NativeStrandVideoView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/inmobi/ads/av;

    .line 865
    if-eqz v1, :cond_0

    .line 866
    sget-object v2, Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;->PLACEMENT_TYPE_FULLSCREEN:Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;

    invoke-virtual {v0}, Lcom/inmobi/ads/at;->d()Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;

    move-result-object v3

    if-ne v2, v3, :cond_3

    .line 867
    iget-object v2, p0, Lcom/inmobi/rendering/InMobiAdActivity;->m:Lcom/inmobi/ads/NativeStrandVideoView;

    invoke-virtual {v2}, Lcom/inmobi/ads/NativeStrandVideoView;->c()V

    .line 870
    :cond_3
    :try_start_1
    invoke-virtual {v1}, Lcom/inmobi/ads/av;->v()Ljava/util/Map;

    move-result-object v2

    const-string v3, "isFullScreen"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 871
    invoke-virtual {v1}, Lcom/inmobi/ads/av;->v()Ljava/util/Map;

    move-result-object v2

    const-string v3, "seekPosition"

    iget-object v4, p0, Lcom/inmobi/rendering/InMobiAdActivity;->m:Lcom/inmobi/ads/NativeStrandVideoView;

    invoke-virtual {v4}, Lcom/inmobi/ads/NativeStrandVideoView;->getCurrentPosition()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 872
    invoke-virtual {v0, v1}, Lcom/inmobi/ads/at;->a(Lcom/inmobi/ads/av;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 874
    :catch_1
    move-exception v0

    .line 875
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/rendering/InMobiAdActivity;->f:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Encountered unexpected error in onVideoClosed handler: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 876
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 875
    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 877
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->DEBUG:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    const-string v2, "InMobi"

    const-string v3, "SDK encountered unexpected error in closing video"

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 879
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v1

    new-instance v2, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v2, v0}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    goto/16 :goto_0

    .line 883
    :cond_4
    invoke-virtual {p0}, Lcom/inmobi/rendering/InMobiAdActivity;->finish()V

    goto/16 :goto_0

    .line 887
    :cond_5
    iget v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->n:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    .line 888
    iput-boolean v2, p0, Lcom/inmobi/rendering/InMobiAdActivity;->p:Z

    .line 889
    invoke-virtual {p0}, Lcom/inmobi/rendering/InMobiAdActivity;->finish()V

    goto/16 :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .prologue
    .line 537
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 539
    iget-object v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->j:Lcom/inmobi/rendering/RenderView;

    if-eqz v0, :cond_0

    .line 540
    iget-object v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->j:Lcom/inmobi/rendering/RenderView;

    invoke-virtual {v0}, Lcom/inmobi/rendering/RenderView;->m()V

    .line 542
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    const/16 v6, 0x400

    const/16 v4, 0x66

    const/4 v5, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 314
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 316
    iput-boolean v3, p0, Lcom/inmobi/rendering/InMobiAdActivity;->q:Z

    .line 317
    invoke-virtual {p0}, Lcom/inmobi/rendering/InMobiAdActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.inmobi.rendering.InMobiAdActivity.EXTRA_AD_ACTIVITY_TYPE"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->n:I

    .line 318
    iget v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->n:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_4

    .line 319
    invoke-virtual {p0}, Lcom/inmobi/rendering/InMobiAdActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.inmobi.rendering.InMobiAdActivity.IN_APP_BROWSER_URL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 321
    new-instance v0, Lcom/inmobi/rendering/RenderView;

    new-instance v1, Lcom/inmobi/ads/AdContainer$RenderingProperties;

    sget-object v2, Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;->PLACEMENT_TYPE_FULLSCREEN:Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;

    invoke-direct {v1, v2}, Lcom/inmobi/ads/AdContainer$RenderingProperties;-><init>(Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;)V

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/inmobi/rendering/RenderView;-><init>(Landroid/content/Context;Lcom/inmobi/ads/AdContainer$RenderingProperties;Ljava/util/Set;)V

    iput-object v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->j:Lcom/inmobi/rendering/RenderView;

    .line 324
    sget-object v0, Lcom/inmobi/rendering/InMobiAdActivity;->h:Lcom/inmobi/rendering/RenderView;

    if-nez v0, :cond_1

    sget-object v0, Lcom/inmobi/rendering/RenderView;->a:Lcom/inmobi/rendering/RenderView$a;

    .line 327
    :goto_0
    sget-object v1, Lcom/inmobi/rendering/InMobiAdActivity;->h:Lcom/inmobi/rendering/RenderView;

    if-nez v1, :cond_2

    new-instance v1, Lcom/inmobi/ads/c$f;

    invoke-direct {v1}, Lcom/inmobi/ads/c$f;-><init>()V

    .line 330
    :goto_1
    sget-object v2, Lcom/inmobi/rendering/InMobiAdActivity;->h:Lcom/inmobi/rendering/RenderView;

    if-nez v2, :cond_3

    new-instance v2, Lcom/inmobi/ads/c$d;

    invoke-direct {v2}, Lcom/inmobi/ads/c$d;-><init>()V

    .line 333
    :goto_2
    iget-object v4, p0, Lcom/inmobi/rendering/InMobiAdActivity;->j:Lcom/inmobi/rendering/RenderView;

    invoke-virtual {v4, v5}, Lcom/inmobi/rendering/RenderView;->setIsInAppBrowser(Z)V

    .line 334
    iget-object v4, p0, Lcom/inmobi/rendering/InMobiAdActivity;->j:Lcom/inmobi/rendering/RenderView;

    invoke-virtual {v4, v0, v1, v2}, Lcom/inmobi/rendering/RenderView;->a(Lcom/inmobi/rendering/RenderView$a;Lcom/inmobi/ads/c$f;Lcom/inmobi/ads/c$d;)V

    .line 335
    invoke-direct {p0}, Lcom/inmobi/rendering/InMobiAdActivity;->b()V

    .line 336
    iget-object v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->j:Lcom/inmobi/rendering/RenderView;

    invoke-virtual {v0, v3}, Lcom/inmobi/rendering/RenderView;->loadUrl(Ljava/lang/String;)V

    .line 337
    iget-object v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->j:Lcom/inmobi/rendering/RenderView;

    invoke-virtual {v0, p0}, Lcom/inmobi/rendering/RenderView;->setFullScreenActivityContext(Landroid/app/Activity;)V

    .line 412
    :cond_0
    :goto_3
    return-void

    .line 324
    :cond_1
    sget-object v0, Lcom/inmobi/rendering/InMobiAdActivity;->h:Lcom/inmobi/rendering/RenderView;

    .line 326
    invoke-virtual {v0}, Lcom/inmobi/rendering/RenderView;->getListener()Lcom/inmobi/rendering/RenderView$a;

    move-result-object v0

    goto :goto_0

    .line 327
    :cond_2
    sget-object v1, Lcom/inmobi/rendering/InMobiAdActivity;->h:Lcom/inmobi/rendering/RenderView;

    .line 329
    invoke-virtual {v1}, Lcom/inmobi/rendering/RenderView;->getRenderingConfig()Lcom/inmobi/ads/c$f;

    move-result-object v1

    goto :goto_1

    .line 330
    :cond_3
    sget-object v2, Lcom/inmobi/rendering/InMobiAdActivity;->h:Lcom/inmobi/rendering/RenderView;

    .line 332
    invoke-virtual {v2}, Lcom/inmobi/rendering/RenderView;->getMraidConfig()Lcom/inmobi/ads/c$d;

    move-result-object v2

    goto :goto_2

    .line 338
    :cond_4
    iget v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->n:I

    if-ne v0, v4, :cond_e

    .line 339
    invoke-virtual {p0}, Lcom/inmobi/rendering/InMobiAdActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.inmobi.rendering.InMobiAdActivity.EXTRA_AD_CONTAINER_INDEX"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 340
    invoke-virtual {p0}, Lcom/inmobi/rendering/InMobiAdActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.inmobi.rendering.InMobiAdActivity.EXTRA_AD_CONTAINER_INDEX"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 341
    sget-object v0, Lcom/inmobi/rendering/InMobiAdActivity;->g:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/AdContainer;

    iput-object v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->i:Lcom/inmobi/ads/AdContainer;

    .line 342
    iget-object v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->i:Lcom/inmobi/ads/AdContainer;

    if-nez v0, :cond_5

    .line 343
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/rendering/InMobiAdActivity;->f:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to find ad container with key:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    invoke-virtual {p0}, Lcom/inmobi/rendering/InMobiAdActivity;->finish()V

    goto :goto_3

    .line 347
    :cond_5
    invoke-virtual {p0}, Lcom/inmobi/rendering/InMobiAdActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.inmobi.rendering.InMobiAdActivity.EXTRA_AD_CONTAINER_TYPE"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->o:I

    .line 348
    iget v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->o:I

    if-nez v0, :cond_7

    .line 349
    iget-object v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->i:Lcom/inmobi/ads/AdContainer;

    invoke-interface {v0}, Lcom/inmobi/ads/AdContainer;->getFullScreenEventsListener()Lcom/inmobi/ads/AdContainer$a;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 350
    iget-object v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->i:Lcom/inmobi/ads/AdContainer;

    invoke-interface {v0}, Lcom/inmobi/ads/AdContainer;->getFullScreenEventsListener()Lcom/inmobi/ads/AdContainer$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/inmobi/ads/AdContainer$a;->a()V

    .line 352
    :cond_6
    invoke-virtual {p0}, Lcom/inmobi/rendering/InMobiAdActivity;->finish()V

    goto/16 :goto_3

    .line 354
    :cond_7
    invoke-virtual {p0}, Lcom/inmobi/rendering/InMobiAdActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.inmobi.rendering.InMobiAdActivity.EXTRA_AD_ACTIVITY_IS_FULL_SCREEN"

    .line 355
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 356
    if-eqz v0, :cond_8

    .line 357
    invoke-virtual {p0, v5}, Lcom/inmobi/rendering/InMobiAdActivity;->requestWindowFeature(I)Z

    .line 358
    invoke-virtual {p0}, Lcom/inmobi/rendering/InMobiAdActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v6, v6}, Landroid/view/Window;->setFlags(II)V

    .line 361
    :cond_8
    const/16 v0, 0xc8

    iget v1, p0, Lcom/inmobi/rendering/InMobiAdActivity;->o:I

    if-ne v0, v1, :cond_9

    sget-object v0, Lcom/inmobi/ads/AdUnit$AdMarkupType;->AD_MARKUP_TYPE_INM_HTML:Lcom/inmobi/ads/AdUnit$AdMarkupType;

    iget-object v1, p0, Lcom/inmobi/rendering/InMobiAdActivity;->i:Lcom/inmobi/ads/AdContainer;

    .line 362
    invoke-interface {v1}, Lcom/inmobi/ads/AdContainer;->getMarkupType()Lcom/inmobi/ads/AdUnit$AdMarkupType;

    move-result-object v1

    if-ne v0, v1, :cond_a

    :cond_9
    const/16 v0, 0xc9

    iget v1, p0, Lcom/inmobi/rendering/InMobiAdActivity;->o:I

    if-ne v0, v1, :cond_c

    sget-object v0, Lcom/inmobi/ads/AdUnit$AdMarkupType;->AD_MARKUP_TYPE_INM_JSON:Lcom/inmobi/ads/AdUnit$AdMarkupType;

    iget-object v1, p0, Lcom/inmobi/rendering/InMobiAdActivity;->i:Lcom/inmobi/ads/AdContainer;

    .line 364
    invoke-interface {v1}, Lcom/inmobi/ads/AdContainer;->getMarkupType()Lcom/inmobi/ads/AdUnit$AdMarkupType;

    move-result-object v1

    if-eq v0, v1, :cond_c

    .line 365
    :cond_a
    iget-object v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->i:Lcom/inmobi/ads/AdContainer;

    invoke-interface {v0}, Lcom/inmobi/ads/AdContainer;->getFullScreenEventsListener()Lcom/inmobi/ads/AdContainer$a;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 366
    iget-object v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->i:Lcom/inmobi/ads/AdContainer;

    invoke-interface {v0}, Lcom/inmobi/ads/AdContainer;->getFullScreenEventsListener()Lcom/inmobi/ads/AdContainer$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/inmobi/ads/AdContainer$a;->a()V

    .line 368
    :cond_b
    invoke-virtual {p0}, Lcom/inmobi/rendering/InMobiAdActivity;->finish()V

    goto/16 :goto_3

    .line 371
    :cond_c
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->i:Lcom/inmobi/ads/AdContainer;

    invoke-interface {v0, p0}, Lcom/inmobi/ads/AdContainer;->setFullScreenActivityContext(Landroid/app/Activity;)V

    .line 372
    invoke-direct {p0}, Lcom/inmobi/rendering/InMobiAdActivity;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    .line 373
    :catch_0
    move-exception v0

    .line 374
    iget-object v1, p0, Lcom/inmobi/rendering/InMobiAdActivity;->i:Lcom/inmobi/ads/AdContainer;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/inmobi/ads/AdContainer;->setFullScreenActivityContext(Landroid/app/Activity;)V

    .line 375
    iget-object v1, p0, Lcom/inmobi/rendering/InMobiAdActivity;->i:Lcom/inmobi/ads/AdContainer;

    invoke-interface {v1}, Lcom/inmobi/ads/AdContainer;->getFullScreenEventsListener()Lcom/inmobi/ads/AdContainer$a;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 376
    iget-object v1, p0, Lcom/inmobi/rendering/InMobiAdActivity;->i:Lcom/inmobi/ads/AdContainer;

    invoke-interface {v1}, Lcom/inmobi/ads/AdContainer;->getFullScreenEventsListener()Lcom/inmobi/ads/AdContainer$a;

    move-result-object v1

    invoke-interface {v1}, Lcom/inmobi/ads/AdContainer$a;->a()V

    .line 378
    :cond_d
    invoke-virtual {p0}, Lcom/inmobi/rendering/InMobiAdActivity;->finish()V

    .line 379
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v1

    new-instance v2, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v2, v0}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    goto/16 :goto_3

    .line 385
    :cond_e
    iget v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->n:I

    const/16 v1, 0x67

    if-ne v0, v1, :cond_10

    .line 386
    invoke-virtual {p0}, Lcom/inmobi/rendering/InMobiAdActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 387
    if-ne v1, v2, :cond_f

    .line 388
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/rendering/InMobiAdActivity;->f:Ljava/lang/String;

    const-string v2, "Invalid Request Code Supplied for ACTIVITY_TYPE_FOR_RESULT"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 390
    :cond_f
    sget-object v0, Lcom/inmobi/rendering/InMobiAdActivity;->b:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 391
    invoke-virtual {p0, v0, v1}, Lcom/inmobi/rendering/InMobiAdActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_3

    .line 393
    :cond_10
    iget v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->n:I

    const/16 v1, 0x68

    if-ne v0, v1, :cond_0

    .line 394
    invoke-virtual {p0}, Lcom/inmobi/rendering/InMobiAdActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 395
    if-ne v0, v2, :cond_11

    .line 396
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/rendering/InMobiAdActivity;->f:Ljava/lang/String;

    const-string v2, "Invalid Request Code Supplied for ACTIVITY_TYPE_PERMISSIONS_DIALOG"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 399
    :cond_11
    invoke-virtual {p0}, Lcom/inmobi/rendering/InMobiAdActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "permissions"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 400
    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_0

    .line 407
    invoke-static {}, Lcom/inmobi/commons/core/utilities/a;->b()V

    .line 408
    invoke-virtual {p0, v1, v0}, Lcom/inmobi/rendering/InMobiAdActivity;->requestPermissions([Ljava/lang/String;I)V

    goto/16 :goto_3
.end method

.method protected onDestroy()V
    .locals 6

    .prologue
    const/16 v4, 0xc8

    const/16 v3, 0x66

    const/16 v1, 0x64

    const/16 v2, 0xf

    const/4 v5, 0x0

    .line 431
    iget-boolean v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->p:Z

    if-eqz v0, :cond_5

    .line 432
    iget v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->n:I

    if-ne v1, v0, :cond_3

    .line 433
    iget-object v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->j:Lcom/inmobi/rendering/RenderView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->j:Lcom/inmobi/rendering/RenderView;

    invoke-virtual {v0}, Lcom/inmobi/rendering/RenderView;->getFullScreenEventsListener()Lcom/inmobi/ads/AdContainer$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 435
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->j:Lcom/inmobi/rendering/RenderView;

    invoke-virtual {v0}, Lcom/inmobi/rendering/RenderView;->getFullScreenEventsListener()Lcom/inmobi/ads/AdContainer$a;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/rendering/InMobiAdActivity;->j:Lcom/inmobi/rendering/RenderView;

    invoke-interface {v0, v1}, Lcom/inmobi/ads/AdContainer$a;->b(Ljava/lang/Object;)V

    .line 436
    iget-object v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->j:Lcom/inmobi/rendering/RenderView;

    invoke-virtual {v0}, Lcom/inmobi/rendering/RenderView;->destroy()V

    .line 437
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->j:Lcom/inmobi/rendering/RenderView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 477
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->i:Lcom/inmobi/ads/AdContainer;

    if-eqz v0, :cond_2

    .line 478
    iget-object v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->i:Lcom/inmobi/ads/AdContainer;

    invoke-interface {v0}, Lcom/inmobi/ads/AdContainer;->getViewableAd()Lcom/inmobi/ads/ViewableAd;

    move-result-object v0

    .line 479
    if-eqz v0, :cond_1

    .line 480
    invoke-virtual {v0}, Lcom/inmobi/ads/ViewableAd;->c()V

    .line 482
    :cond_1
    iget-object v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->i:Lcom/inmobi/ads/AdContainer;

    invoke-interface {v0}, Lcom/inmobi/ads/AdContainer;->destroy()V

    .line 483
    iput-object v5, p0, Lcom/inmobi/rendering/InMobiAdActivity;->i:Lcom/inmobi/ads/AdContainer;

    .line 532
    :cond_2
    :goto_1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 533
    return-void

    .line 442
    :cond_3
    iget v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->n:I

    if-ne v3, v0, :cond_0

    .line 443
    iget-object v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->i:Lcom/inmobi/ads/AdContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->i:Lcom/inmobi/ads/AdContainer;

    invoke-interface {v0}, Lcom/inmobi/ads/AdContainer;->getFullScreenEventsListener()Lcom/inmobi/ads/AdContainer$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 444
    iget v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->o:I

    if-ne v4, v0, :cond_4

    .line 446
    :try_start_1
    iget-object v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->i:Lcom/inmobi/ads/AdContainer;

    invoke-interface {v0}, Lcom/inmobi/ads/AdContainer;->getFullScreenEventsListener()Lcom/inmobi/ads/AdContainer$a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/inmobi/ads/AdContainer$a;->b(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 447
    :catch_0
    move-exception v0

    .line 448
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/rendering/InMobiAdActivity;->f:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Encountered unexpected error in onAdScreenDismissed handler: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 449
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 448
    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->DEBUG:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    const-string v1, "InMobi"

    const-string v2, "SDK encountered unexpected error while finishing fullscreen view"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 453
    :cond_4
    const/16 v0, 0xc9

    iget v1, p0, Lcom/inmobi/rendering/InMobiAdActivity;->o:I

    if-ne v0, v1, :cond_0

    .line 454
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v2, :cond_0

    .line 455
    iget-object v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->i:Lcom/inmobi/ads/AdContainer;

    instance-of v0, v0, Lcom/inmobi/ads/at;

    if-eqz v0, :cond_0

    .line 456
    iget-object v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->i:Lcom/inmobi/ads/AdContainer;

    check-cast v0, Lcom/inmobi/ads/at;

    .line 457
    invoke-virtual {v0}, Lcom/inmobi/ads/at;->getVideoContainerView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/NativeStrandVideoWrapper;

    .line 458
    if-eqz v0, :cond_0

    .line 459
    invoke-virtual {v0}, Lcom/inmobi/ads/NativeStrandVideoWrapper;->getVideoView()Lcom/inmobi/ads/NativeStrandVideoView;

    move-result-object v1

    .line 460
    invoke-virtual {v1}, Lcom/inmobi/ads/NativeStrandVideoView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/av;

    .line 461
    invoke-virtual {v1}, Lcom/inmobi/ads/NativeStrandVideoView;->b()V

    .line 463
    :try_start_2
    iget-object v1, p0, Lcom/inmobi/rendering/InMobiAdActivity;->i:Lcom/inmobi/ads/AdContainer;

    invoke-interface {v1}, Lcom/inmobi/ads/AdContainer;->getFullScreenEventsListener()Lcom/inmobi/ads/AdContainer$a;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/inmobi/ads/AdContainer$a;->b(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 464
    :catch_1
    move-exception v0

    .line 465
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/rendering/InMobiAdActivity;->f:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Encountered unexpected error in onAdScreenDismissed handler: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 466
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 465
    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->DEBUG:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    const-string v2, "InMobi"

    const-string v3, "SDK encountered unexpected error while finishing fullscreen view"

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v1

    new-instance v2, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v2, v0}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    goto/16 :goto_0

    .line 495
    :cond_5
    iget v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->n:I

    if-eq v1, v0, :cond_2

    .line 497
    iget v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->n:I

    if-ne v3, v0, :cond_2

    .line 498
    iget-object v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->i:Lcom/inmobi/ads/AdContainer;

    if-eqz v0, :cond_2

    .line 499
    iget v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->o:I

    if-ne v4, v0, :cond_7

    .line 500
    iget-object v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->i:Lcom/inmobi/ads/AdContainer;

    check-cast v0, Lcom/inmobi/rendering/RenderView;

    .line 501
    invoke-virtual {v0, v5}, Lcom/inmobi/rendering/RenderView;->setFullScreenActivityContext(Landroid/app/Activity;)V

    .line 503
    :try_start_3
    invoke-virtual {v0}, Lcom/inmobi/rendering/RenderView;->b()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 526
    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->i:Lcom/inmobi/ads/AdContainer;

    invoke-static {v0}, Lcom/inmobi/rendering/InMobiAdActivity;->a(Ljava/lang/Object;)V

    .line 527
    iget-object v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->i:Lcom/inmobi/ads/AdContainer;

    invoke-interface {v0}, Lcom/inmobi/ads/AdContainer;->destroy()V

    .line 528
    iput-object v5, p0, Lcom/inmobi/rendering/InMobiAdActivity;->i:Lcom/inmobi/ads/AdContainer;

    goto/16 :goto_1

    .line 504
    :catch_2
    move-exception v0

    .line 505
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/rendering/InMobiAdActivity;->f:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Encountered unexpected error in processing close request: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 506
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 505
    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->DEBUG:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    const-string v1, "InMobi"

    const-string v2, "SDK encountered unexpected error in processing close request"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 510
    :cond_7
    const/16 v0, 0xc9

    iget v1, p0, Lcom/inmobi/rendering/InMobiAdActivity;->o:I

    if-ne v0, v1, :cond_6

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v2, :cond_6

    .line 512
    iget-object v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->i:Lcom/inmobi/ads/AdContainer;

    check-cast v0, Lcom/inmobi/ads/at;

    .line 513
    invoke-virtual {v0, v5}, Lcom/inmobi/ads/at;->setFullScreenActivityContext(Landroid/app/Activity;)V

    .line 514
    iget-object v1, p0, Lcom/inmobi/rendering/InMobiAdActivity;->m:Lcom/inmobi/ads/NativeStrandVideoView;

    if-eqz v1, :cond_6

    .line 515
    iget-object v1, p0, Lcom/inmobi/rendering/InMobiAdActivity;->m:Lcom/inmobi/ads/NativeStrandVideoView;

    invoke-virtual {v1}, Lcom/inmobi/ads/NativeStrandVideoView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/inmobi/ads/av;

    .line 516
    if-eqz v1, :cond_6

    .line 517
    sget-object v2, Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;->PLACEMENT_TYPE_FULLSCREEN:Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;

    invoke-virtual {v0}, Lcom/inmobi/ads/at;->d()Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;

    move-result-object v0

    if-ne v2, v0, :cond_8

    .line 518
    iget-object v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->m:Lcom/inmobi/ads/NativeStrandVideoView;

    invoke-virtual {v0}, Lcom/inmobi/ads/NativeStrandVideoView;->c()V

    .line 520
    :cond_8
    iget-object v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->i:Lcom/inmobi/ads/AdContainer;

    invoke-interface {v0}, Lcom/inmobi/ads/AdContainer;->getFullScreenEventsListener()Lcom/inmobi/ads/AdContainer$a;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 521
    iget-object v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->i:Lcom/inmobi/ads/AdContainer;

    invoke-interface {v0}, Lcom/inmobi/ads/AdContainer;->getFullScreenEventsListener()Lcom/inmobi/ads/AdContainer$a;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/inmobi/ads/AdContainer$a;->b(Ljava/lang/Object;)V

    goto :goto_2

    .line 438
    :catch_3
    move-exception v0

    goto/16 :goto_0
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 2

    .prologue
    .line 802
    invoke-super {p0, p1}, Landroid/app/Activity;->onMultiWindowModeChanged(Z)V

    .line 803
    if-nez p1, :cond_1

    .line 804
    iget-object v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->j:Lcom/inmobi/rendering/RenderView;

    if-eqz v0, :cond_0

    .line 805
    iget-object v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->j:Lcom/inmobi/rendering/RenderView;

    iget-object v1, p0, Lcom/inmobi/rendering/InMobiAdActivity;->j:Lcom/inmobi/rendering/RenderView;

    invoke-virtual {v1}, Lcom/inmobi/rendering/RenderView;->getOrientationProperties()Lcom/inmobi/rendering/mraid/i;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/rendering/RenderView;->setOrientationProperties(Lcom/inmobi/rendering/mraid/i;)V

    .line 807
    :cond_0
    iget-object v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->i:Lcom/inmobi/ads/AdContainer;

    if-eqz v0, :cond_1

    .line 808
    iget-object v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->i:Lcom/inmobi/ads/AdContainer;

    invoke-interface {v0}, Lcom/inmobi/ads/AdContainer;->setRequestedScreenOrientation()V

    .line 811
    :cond_1
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 3

    .prologue
    .line 816
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 822
    invoke-static {}, Lcom/inmobi/commons/core/utilities/a;->c()V

    .line 823
    sget-object v0, Lcom/inmobi/rendering/InMobiAdActivity;->d:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/rendering/InMobiAdActivity$b;

    .line 824
    sget-object v1, Lcom/inmobi/rendering/InMobiAdActivity;->d:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 825
    if-eqz v0, :cond_0

    .line 826
    invoke-interface {v0, p1, p2, p3}, Lcom/inmobi/rendering/InMobiAdActivity$b;->a(I[Ljava/lang/String;[I)V

    .line 828
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/rendering/InMobiAdActivity;->finish()V

    .line 829
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 185
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 187
    iget-boolean v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->p:Z

    if-nez v0, :cond_0

    .line 189
    const/16 v0, 0x64

    iget v1, p0, Lcom/inmobi/rendering/InMobiAdActivity;->n:I

    if-ne v0, v1, :cond_1

    .line 190
    iget-object v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->j:Lcom/inmobi/rendering/RenderView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->j:Lcom/inmobi/rendering/RenderView;

    invoke-virtual {v0}, Lcom/inmobi/rendering/RenderView;->getFullScreenEventsListener()Lcom/inmobi/ads/AdContainer$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 192
    :try_start_0
    iget-boolean v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->q:Z

    if-nez v0, :cond_0

    .line 193
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->q:Z

    .line 194
    iget-object v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->j:Lcom/inmobi/rendering/RenderView;

    invoke-virtual {v0}, Lcom/inmobi/rendering/RenderView;->getFullScreenEventsListener()Lcom/inmobi/ads/AdContainer$a;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/rendering/InMobiAdActivity;->j:Lcom/inmobi/rendering/RenderView;

    invoke-interface {v0, v1}, Lcom/inmobi/ads/AdContainer$a;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 235
    :cond_0
    :goto_0
    return-void

    .line 200
    :cond_1
    iget v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->o:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_2

    const/16 v0, 0x66

    iget v1, p0, Lcom/inmobi/rendering/InMobiAdActivity;->n:I

    if-ne v0, v1, :cond_2

    .line 201
    iget-object v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->i:Lcom/inmobi/ads/AdContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->i:Lcom/inmobi/ads/AdContainer;

    invoke-interface {v0}, Lcom/inmobi/ads/AdContainer;->getFullScreenEventsListener()Lcom/inmobi/ads/AdContainer$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 203
    :try_start_1
    iget-boolean v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->q:Z

    if-nez v0, :cond_0

    .line 204
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->q:Z

    .line 205
    iget-object v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->i:Lcom/inmobi/ads/AdContainer;

    invoke-interface {v0}, Lcom/inmobi/ads/AdContainer;->getFullScreenEventsListener()Lcom/inmobi/ads/AdContainer$a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/inmobi/ads/AdContainer$a;->a(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 207
    :catch_0
    move-exception v0

    goto :goto_0

    .line 211
    :cond_2
    const/16 v0, 0xc9

    iget v1, p0, Lcom/inmobi/rendering/InMobiAdActivity;->o:I

    if-ne v0, v1, :cond_0

    .line 212
    iget-object v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->m:Lcom/inmobi/ads/NativeStrandVideoView;

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->m:Lcom/inmobi/ads/NativeStrandVideoView;

    invoke-virtual {v0}, Lcom/inmobi/ads/NativeStrandVideoView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/av;

    .line 214
    if-eqz v0, :cond_0

    .line 216
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/inmobi/rendering/InMobiAdActivity;->m:Lcom/inmobi/ads/NativeStrandVideoView;

    invoke-virtual {v2}, Lcom/inmobi/ads/NativeStrandVideoView;->getState()I

    move-result v2

    if-ne v1, v2, :cond_3

    .line 217
    invoke-virtual {v0}, Lcom/inmobi/ads/av;->v()Ljava/util/Map;

    move-result-object v1

    const-string v2, "didCompleteQ4"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_3

    .line 218
    iget-object v1, p0, Lcom/inmobi/rendering/InMobiAdActivity;->m:Lcom/inmobi/ads/NativeStrandVideoView;

    invoke-virtual {v1}, Lcom/inmobi/ads/NativeStrandVideoView;->start()V

    .line 220
    :cond_3
    iget-object v1, p0, Lcom/inmobi/rendering/InMobiAdActivity;->i:Lcom/inmobi/ads/AdContainer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/inmobi/rendering/InMobiAdActivity;->i:Lcom/inmobi/ads/AdContainer;

    invoke-interface {v1}, Lcom/inmobi/ads/AdContainer;->getFullScreenEventsListener()Lcom/inmobi/ads/AdContainer$a;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 222
    :try_start_2
    iget-boolean v1, p0, Lcom/inmobi/rendering/InMobiAdActivity;->q:Z

    if-nez v1, :cond_0

    .line 223
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/inmobi/rendering/InMobiAdActivity;->q:Z

    .line 224
    iget-object v1, p0, Lcom/inmobi/rendering/InMobiAdActivity;->i:Lcom/inmobi/ads/AdContainer;

    invoke-interface {v1}, Lcom/inmobi/ads/AdContainer;->getFullScreenEventsListener()Lcom/inmobi/ads/AdContainer$a;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/inmobi/ads/AdContainer$a;->a(Ljava/lang/Object;)V

    .line 225
    iget-object v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->m:Lcom/inmobi/ads/NativeStrandVideoView;

    invoke-virtual {v0}, Lcom/inmobi/ads/NativeStrandVideoView;->a()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 227
    :catch_1
    move-exception v0

    .line 228
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v1

    new-instance v2, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v2, v0}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    goto/16 :goto_0

    .line 196
    :catch_2
    move-exception v0

    goto/16 :goto_0
.end method

.method protected onStart()V
    .locals 11

    .prologue
    const/4 v5, 0x0

    .line 239
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 241
    iget-boolean v1, p0, Lcom/inmobi/rendering/InMobiAdActivity;->p:Z

    if-nez v1, :cond_0

    .line 242
    const/16 v1, 0x66

    iget v2, p0, Lcom/inmobi/rendering/InMobiAdActivity;->n:I

    if-ne v1, v2, :cond_0

    .line 243
    iget-object v1, p0, Lcom/inmobi/rendering/InMobiAdActivity;->i:Lcom/inmobi/ads/AdContainer;

    if-eqz v1, :cond_0

    .line 244
    iget-object v1, p0, Lcom/inmobi/rendering/InMobiAdActivity;->i:Lcom/inmobi/ads/AdContainer;

    invoke-interface {v1}, Lcom/inmobi/ads/AdContainer;->getViewableAd()Lcom/inmobi/ads/ViewableAd;

    move-result-object v6

    .line 245
    const/16 v1, 0xc8

    iget v2, p0, Lcom/inmobi/rendering/InMobiAdActivity;->o:I

    if-ne v1, v2, :cond_1

    .line 246
    sget-object v1, Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;->PLACEMENT_TYPE_FULLSCREEN:Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;

    iget-object v2, p0, Lcom/inmobi/rendering/InMobiAdActivity;->i:Lcom/inmobi/ads/AdContainer;

    invoke-interface {v2}, Lcom/inmobi/ads/AdContainer;->getRenderingProperties()Lcom/inmobi/ads/AdContainer$RenderingProperties;

    move-result-object v2

    invoke-virtual {v2}, Lcom/inmobi/ads/AdContainer$RenderingProperties;->a()Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 248
    :try_start_0
    new-instance v1, Lcom/inmobi/ads/c;

    invoke-direct {v1}, Lcom/inmobi/ads/c;-><init>()V

    .line 249
    invoke-static {}, Lcom/inmobi/commons/core/configs/b;->a()Lcom/inmobi/commons/core/configs/b;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/inmobi/commons/core/configs/b;->a(Lcom/inmobi/commons/core/configs/a;Lcom/inmobi/commons/core/configs/b$b;)V

    .line 250
    invoke-virtual {v1}, Lcom/inmobi/ads/c;->m()Lcom/inmobi/ads/c$h;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/view/View;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/inmobi/rendering/InMobiAdActivity;->k:Lcom/inmobi/rendering/CustomView;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/inmobi/rendering/InMobiAdActivity;->l:Lcom/inmobi/rendering/CustomView;

    aput-object v4, v2, v3

    invoke-virtual {v6, v1, v2}, Lcom/inmobi/ads/ViewableAd;->a(Lcom/inmobi/ads/c$h;[Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 309
    :cond_0
    :goto_0
    return-void

    .line 252
    :catch_0
    move-exception v1

    .line 253
    sget-object v2, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v3, Lcom/inmobi/rendering/InMobiAdActivity;->f:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SDK encountered unexpected error in enabling impression tracking on this ad: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 255
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 253
    invoke-static {v2, v3, v1}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    iget-object v1, p0, Lcom/inmobi/rendering/InMobiAdActivity;->i:Lcom/inmobi/ads/AdContainer;

    invoke-interface {v1}, Lcom/inmobi/ads/AdContainer;->getFullScreenEventsListener()Lcom/inmobi/ads/AdContainer$a;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 257
    iget-object v1, p0, Lcom/inmobi/rendering/InMobiAdActivity;->i:Lcom/inmobi/ads/AdContainer;

    invoke-interface {v1}, Lcom/inmobi/ads/AdContainer;->getFullScreenEventsListener()Lcom/inmobi/ads/AdContainer$a;

    move-result-object v1

    invoke-interface {v1}, Lcom/inmobi/ads/AdContainer$a;->a()V

    goto :goto_0

    .line 261
    :cond_1
    const/16 v1, 0xc9

    iget v2, p0, Lcom/inmobi/rendering/InMobiAdActivity;->o:I

    if-ne v1, v2, :cond_0

    .line 262
    sget-object v1, Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;->PLACEMENT_TYPE_FULLSCREEN:Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;

    iget-object v2, p0, Lcom/inmobi/rendering/InMobiAdActivity;->i:Lcom/inmobi/ads/AdContainer;

    invoke-interface {v2}, Lcom/inmobi/ads/AdContainer;->getRenderingProperties()Lcom/inmobi/ads/AdContainer$RenderingProperties;

    move-result-object v2

    invoke-virtual {v2}, Lcom/inmobi/ads/AdContainer$RenderingProperties;->a()Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 264
    :try_start_1
    new-instance v7, Lcom/inmobi/ads/c;

    invoke-direct {v7}, Lcom/inmobi/ads/c;-><init>()V

    .line 265
    invoke-static {}, Lcom/inmobi/commons/core/configs/b;->a()Lcom/inmobi/commons/core/configs/b;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v7, v2}, Lcom/inmobi/commons/core/configs/b;->a(Lcom/inmobi/commons/core/configs/a;Lcom/inmobi/commons/core/configs/b$b;)V

    .line 266
    invoke-virtual {v6}, Lcom/inmobi/ads/ViewableAd;->b()Landroid/view/View;

    move-result-object v4

    .line 267
    if-eqz v4, :cond_0

    .line 268
    iget-object v1, p0, Lcom/inmobi/rendering/InMobiAdActivity;->i:Lcom/inmobi/ads/AdContainer;

    instance-of v1, v1, Lcom/inmobi/ads/at;

    if-eqz v1, :cond_0

    .line 269
    iget-object v1, p0, Lcom/inmobi/rendering/InMobiAdActivity;->i:Lcom/inmobi/ads/AdContainer;

    check-cast v1, Lcom/inmobi/ads/at;

    .line 270
    invoke-virtual {v1}, Lcom/inmobi/ads/at;->getVideoContainerView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/inmobi/ads/NativeStrandVideoWrapper;

    .line 271
    if-eqz v1, :cond_0

    .line 272
    iget-object v2, p0, Lcom/inmobi/rendering/InMobiAdActivity;->m:Lcom/inmobi/ads/NativeStrandVideoView;

    invoke-virtual {v2}, Lcom/inmobi/ads/NativeStrandVideoView;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/inmobi/ads/av;

    .line 273
    if-eqz v2, :cond_0

    .line 275
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 276
    move-object v0, v4

    check-cast v0, Landroid/view/ViewGroup;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    .line 277
    :goto_1
    if-ge v5, v9, :cond_3

    .line 278
    move-object v0, v4

    check-cast v0, Landroid/view/ViewGroup;

    move-object v3, v0

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 279
    if-eqz v3, :cond_2

    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 280
    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 277
    :cond_2
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto :goto_1

    .line 283
    :cond_3
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/view/View;

    .line 284
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 286
    invoke-virtual {v7}, Lcom/inmobi/ads/c;->m()Lcom/inmobi/ads/c$h;

    move-result-object v3

    .line 289
    invoke-virtual {v3}, Lcom/inmobi/ads/c$h;->d()I

    move-result v4

    .line 288
    invoke-virtual {v2, v4}, Lcom/inmobi/ads/av;->b(I)I

    move-result v2

    .line 287
    invoke-virtual {v3, v2}, Lcom/inmobi/ads/c$h;->a(I)V

    .line 290
    invoke-virtual {v7}, Lcom/inmobi/ads/c;->m()Lcom/inmobi/ads/c$h;

    move-result-object v2

    invoke-virtual {v6, v2, v1}, Lcom/inmobi/ads/ViewableAd;->a(Lcom/inmobi/ads/c$h;[Landroid/view/View;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 295
    :catch_1
    move-exception v1

    .line 296
    sget-object v2, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v3, Lcom/inmobi/rendering/InMobiAdActivity;->f:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SDK encountered unexpected error in enabling impression tracking on this ad: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 298
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 296
    invoke-static {v2, v3, v4}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    iget-object v2, p0, Lcom/inmobi/rendering/InMobiAdActivity;->i:Lcom/inmobi/ads/AdContainer;

    invoke-interface {v2}, Lcom/inmobi/ads/AdContainer;->getFullScreenEventsListener()Lcom/inmobi/ads/AdContainer$a;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 300
    iget-object v2, p0, Lcom/inmobi/rendering/InMobiAdActivity;->i:Lcom/inmobi/ads/AdContainer;

    invoke-interface {v2}, Lcom/inmobi/ads/AdContainer;->getFullScreenEventsListener()Lcom/inmobi/ads/AdContainer$a;

    move-result-object v2

    invoke-interface {v2}, Lcom/inmobi/ads/AdContainer$a;->a()V

    .line 302
    :cond_4
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v2

    new-instance v3, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v3, v1}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v2, v3}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    goto/16 :goto_0
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 416
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 417
    iget-boolean v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->p:Z

    if-nez v0, :cond_0

    .line 418
    iget-object v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->m:Lcom/inmobi/ads/NativeStrandVideoView;

    if-eqz v0, :cond_0

    .line 419
    iget-object v0, p0, Lcom/inmobi/rendering/InMobiAdActivity;->m:Lcom/inmobi/ads/NativeStrandVideoView;

    invoke-virtual {v0}, Lcom/inmobi/ads/NativeStrandVideoView;->pause()V

    .line 422
    :cond_0
    return-void
.end method
