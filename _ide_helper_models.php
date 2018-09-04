<?php
/**
 * A helper file for your Eloquent Models
 * Copy the phpDocs from this file to the correct Model,
 * And remove them from this file, to prevent double declarations.
 *
 * @author Barry vd. Heuvel <barryvdh@gmail.com>
 */


namespace App\Models\Acl{
/**
 * App\Models\Acl\AclPermission
 *
 * @property int $id
 * @property string $name
 * @property string $label
 * @property \Carbon\Carbon|null $created_at
 * @property \Carbon\Carbon|null $updated_at
 * @property-read \Illuminate\Database\Eloquent\Collection|\App\Models\Acl\AclRole[] $roles
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Acl\AclPermission whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Acl\AclPermission whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Acl\AclPermission whereLabel($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Acl\AclPermission whereName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Acl\AclPermission whereUpdatedAt($value)
 */
	class AclPermission extends \Eloquent {}
}

namespace App\Models\Acl{
/**
 * App\Models\Acl\AclPermissionAclRole
 *
 * @property int $acl_permission_id
 * @property int $acl_role_id
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Acl\AclPermissionAclRole whereAclPermissionId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Acl\AclPermissionAclRole whereAclRoleId($value)
 */
	class AclPermissionAclRole extends \Eloquent {}
}

namespace App\Models\Acl{
/**
 * App\Models\Acl\AclRole
 *
 * @property int $id
 * @property string $name
 * @property string $label
 * @property \Carbon\Carbon|null $created_at
 * @property \Carbon\Carbon|null $updated_at
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Acl\AclRole whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Acl\AclRole whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Acl\AclRole whereLabel($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Acl\AclRole whereName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Acl\AclRole whereUpdatedAt($value)
 */
	class AclRole extends \Eloquent {}
}

namespace App\Models\Acl{
/**
 * App\Models\Acl\AclRoleUser
 *
 * @property int $user_id
 * @property int $acl_role_id
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Acl\AclRoleUser whereAclRoleId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Acl\AclRoleUser whereUserId($value)
 */
	class AclRoleUser extends \Eloquent {}
}

namespace App\Models{
/**
 * App\Models\Checklist
 *
 * @property int $id
 * @property string $date
 * @property int $status
 * @property \Carbon\Carbon|null $created_at
 * @property \Carbon\Carbon|null $updated_at
 * @property-read \Illuminate\Database\Eloquent\Collection|\App\Models\ChecklistProduct[] $checklistProduct
 * @property-read \Illuminate\Database\Eloquent\Collection|\App\Models\ChecklistTotal[] $checklistTotals
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Checklist whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Checklist whereDate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Checklist whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Checklist whereStatus($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Checklist whereUpdatedAt($value)
 */
	class Checklist extends \Eloquent {}
}

namespace App\Models{
/**
 * App\Models\ChecklistProduct
 *
 * @property int $id
 * @property int $checklist_id
 * @property int $product_id
 * @property float|null $total
 * @property \Illuminate\Database\Eloquent\Collection|\App\Models\ChecklistWarehouseQuantity[] $quantities
 * @property \Carbon\Carbon|null $created_at
 * @property \Carbon\Carbon|null $updated_at
 * @property-read \App\Models\Checklist $checklist
 * @property-read \App\Models\ChecklistTotal $checklist_tatals
 * @property-read \App\Models\Product $product
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\ChecklistProduct whereChecklistId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\ChecklistProduct whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\ChecklistProduct whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\ChecklistProduct whereProductId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\ChecklistProduct whereQuantities($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\ChecklistProduct whereTotal($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\ChecklistProduct whereUpdatedAt($value)
 */
	class ChecklistProduct extends \Eloquent {}
}

namespace App\Models{
/**
 * App\Models\ChecklistTotal
 *
 * @property int $id
 * @property int $checklist_id
 * @property int $checklist_product_id
 * @property float $total
 * @property float $difference
 * @property \Carbon\Carbon|null $created_at
 * @property \Carbon\Carbon|null $updated_at
 * @property-read \App\Models\Checklist $checklist
 * @property-read \App\Models\ChecklistProduct $checklistProduct
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\ChecklistTotal whereChecklistId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\ChecklistTotal whereChecklistProductId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\ChecklistTotal whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\ChecklistTotal whereDifference($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\ChecklistTotal whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\ChecklistTotal whereTotal($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\ChecklistTotal whereUpdatedAt($value)
 */
	class ChecklistTotal extends \Eloquent {}
}

namespace App\Models{
/**
 * App\Models\ChecklistWarehouseQuantity
 *
 * @property int $id
 * @property int $warehouse_id
 * @property int $checklist_product_id
 * @property float $quantity
 * @property \Carbon\Carbon|null $created_at
 * @property \Carbon\Carbon|null $updated_at
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\ChecklistWarehouseQuantity whereChecklistProductId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\ChecklistWarehouseQuantity whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\ChecklistWarehouseQuantity whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\ChecklistWarehouseQuantity whereQuantity($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\ChecklistWarehouseQuantity whereUpdatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\ChecklistWarehouseQuantity whereWarehouseId($value)
 */
	class ChecklistWarehouseQuantity extends \Eloquent {}
}

namespace App\Models{
/**
 * App\Models\Prevision
 *
 */
	class Prevision extends \Eloquent {}
}

namespace App\Models{
/**
 * App\Models\Product
 *
 * @property int $id
 * @property string $name
 * @property int $active
 * @property int $product_category_id
 * @property int $units_measure_id
 * @property \Carbon\Carbon|null $created_at
 * @property \Carbon\Carbon|null $updated_at
 * @property-read \App\Models\ChecklistProduct $checklistProduct
 * @property-read \App\Models\ProductCategory $productCategory
 * @property-read \App\Models\ProductDailyChecklist $productDailyChecklist
 * @property-read \App\Models\UnitsMeasure $unitsMeasure
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Product whereActive($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Product whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Product whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Product whereName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Product whereProductCategoryId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Product whereUnitsMeasureId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Product whereUpdatedAt($value)
 */
	class Product extends \Eloquent {}
}

namespace App\Models{
/**
 * App\Models\ProductCategory
 *
 * @property int $id
 * @property string $name
 * @property int $active
 * @property \Carbon\Carbon|null $created_at
 * @property \Carbon\Carbon|null $updated_at
 * @property-read \Illuminate\Database\Eloquent\Collection|\App\Models\Product[] $product
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\ProductCategory whereActive($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\ProductCategory whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\ProductCategory whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\ProductCategory whereName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\ProductCategory whereUpdatedAt($value)
 */
	class ProductCategory extends \Eloquent {}
}

namespace App\Models{
/**
 * App\Models\ProductChecklist
 *
 */
	class ProductChecklist extends \Eloquent {}
}

namespace App\Models{
/**
 * App\Models\ProductDailyChecklist
 *
 * @property int $id
 * @property int $product_id
 * @property string|null $days
 * @property \Carbon\Carbon|null $created_at
 * @property \Carbon\Carbon|null $updated_at
 * @property-read \App\Models\Product $product
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\ProductDailyChecklist whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\ProductDailyChecklist whereDays($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\ProductDailyChecklist whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\ProductDailyChecklist whereProductId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\ProductDailyChecklist whereUpdatedAt($value)
 */
	class ProductDailyChecklist extends \Eloquent {}
}

namespace App\Models{
/**
 * App\Models\Production
 *
 * @property int $id
 * @property string $date
 * @property float $quantity
 * @property int $product_id
 * @property \Carbon\Carbon|null $created_at
 * @property \Carbon\Carbon|null $updated_at
 * @property-read \App\Models\Product $product
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Production whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Production whereDate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Production whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Production whereProductId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Production whereQuantity($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Production whereUpdatedAt($value)
 */
	class Production extends \Eloquent {}
}

namespace App\Models{
/**
 * App\Models\Task
 *
 * @property int $id
 * @property int $product_id
 * @property string|null $description
 * @property int $status
 * @property \Carbon\Carbon|null $created_at
 * @property \Carbon\Carbon|null $updated_at
 * @property-read \App\Models\Product $product
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Task whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Task whereDescription($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Task whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Task whereProductId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Task whereStatus($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Task whereUpdatedAt($value)
 */
	class Task extends \Eloquent {}
}

namespace App\Models{
/**
 * App\Models\UnitsMeasure
 *
 * @property int $id
 * @property string $name
 * @property string $symbol
 * @property \Carbon\Carbon|null $created_at
 * @property \Carbon\Carbon|null $updated_at
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\UnitsMeasure whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\UnitsMeasure whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\UnitsMeasure whereName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\UnitsMeasure whereSymbol($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\UnitsMeasure whereUpdatedAt($value)
 */
	class UnitsMeasure extends \Eloquent {}
}

namespace App\Models{
/**
 * App\Models\User
 *
 * @property int $id
 * @property string $firstname
 * @property string $lastname
 * @property string $name
 * @property string $email
 * @property string $password
 * @property int $active
 * @property string|null $remember_token
 * @property \Carbon\Carbon|null $created_at
 * @property \Carbon\Carbon|null $updated_at
 * @property-read \Illuminate\Database\Eloquent\Collection|\Laravel\Passport\Client[] $clients
 * @property-read \Illuminate\Notifications\DatabaseNotificationCollection|\Illuminate\Notifications\DatabaseNotification[] $notifications
 * @property-read \Illuminate\Database\Eloquent\Collection|\App\Models\Acl\AclRole[] $roles
 * @property-read \Illuminate\Database\Eloquent\Collection|\Laravel\Passport\Token[] $tokens
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\User whereActive($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\User whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\User whereEmail($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\User whereFirstname($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\User whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\User whereLastname($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\User whereName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\User wherePassword($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\User whereRememberToken($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\User whereUpdatedAt($value)
 */
	class User extends \Eloquent {}
}

namespace App\Models{
/**
 * App\Models\Warehouse
 *
 * @property int $id
 * @property string $name
 * @property int $active
 * @property \Carbon\Carbon|null $created_at
 * @property \Carbon\Carbon|null $updated_at
 * @property-read \App\Models\ChecklistWarehouseQuantity $checklistWarehouseQuantities
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Warehouse whereActive($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Warehouse whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Warehouse whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Warehouse whereName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Warehouse whereUpdatedAt($value)
 */
	class Warehouse extends \Eloquent {}
}

