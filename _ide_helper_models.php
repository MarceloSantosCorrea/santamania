<?php

// @formatter:off
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
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @property-read \Illuminate\Database\Eloquent\Collection|\App\Models\Acl\AclRole[] $roles
 * @property-read int|null $roles_count
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Acl\AclPermission newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Acl\AclPermission newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Acl\AclPermission query()
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
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Acl\AclPermissionAclRole newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Acl\AclPermissionAclRole newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Acl\AclPermissionAclRole query()
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
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Acl\AclRole newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Acl\AclRole newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Acl\AclRole query()
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
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Acl\AclRoleUser newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Acl\AclRoleUser newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Acl\AclRoleUser query()
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
 * @property string $time_end
 * @property string $time_start
 * @property int $status
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @property-read \Illuminate\Database\Eloquent\Collection|\App\Models\ChecklistProduct[] $checklistProduct
 * @property-read int|null $checklist_product_count
 * @property-read \Illuminate\Database\Eloquent\Collection|\App\Models\ChecklistTotal[] $checklistTotals
 * @property-read int|null $checklist_totals_count
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Checklist newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Checklist newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Checklist query()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Checklist whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Checklist whereDate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Checklist whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Checklist whereStatus($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Checklist whereTimeEnd($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Checklist whereTimeStart($value)
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
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @property-read \App\Models\Checklist $checklist
 * @property-read \App\Models\ChecklistTotal $checklist_tatals
 * @property-read \App\Models\Product $product
 * @property-read int|null $quantities_count
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\ChecklistProduct newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\ChecklistProduct newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\ChecklistProduct query()
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
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @property-read \App\Models\Checklist $checklist
 * @property-read \App\Models\ChecklistProduct $checklistProduct
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\ChecklistTotal newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\ChecklistTotal newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\ChecklistTotal query()
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
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\ChecklistWarehouseQuantity newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\ChecklistWarehouseQuantity newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\ChecklistWarehouseQuantity query()
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
 * App\Models\Filter
 *
 * @property int $id
 * @property string $uid
 * @property string $name
 * @property array $options
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Filter newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Filter newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Filter query()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Filter whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Filter whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Filter whereName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Filter whereOptions($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Filter whereUid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Filter whereUpdatedAt($value)
 */
	class Filter extends \Eloquent {}
}

namespace App\Models{
/**
 * App\Models\Log
 *
 * @property int $id
 * @property string $uid
 * @property string $type
 * @property string|null $message
 * @property int|null $user_id
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Log newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Log newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Log query()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Log whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Log whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Log whereMessage($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Log whereType($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Log whereUid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Log whereUpdatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Log whereUserId($value)
 */
	class Log extends \Eloquent {}
}

namespace App\Models{
/**
 * App\Models\Prevision
 *
 * @property int $id
 * @property int $product_id
 * @property string $prevision_date
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Prevision newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Prevision newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Prevision query()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Prevision whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Prevision whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Prevision wherePrevisionDate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Prevision whereProductId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Prevision whereUpdatedAt($value)
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
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @property-read \App\Models\ChecklistProduct $checklistProduct
 * @property-read \App\Models\Prevision $prevision
 * @property-read \App\Models\ProductCategory $productCategory
 * @property-read \App\Models\ProductDailyChecklist $productDailyChecklist
 * @property-read \App\Models\UnitsMeasure $unitsMeasure
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Product newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Product newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Product query()
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
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @property-read \Illuminate\Database\Eloquent\Collection|\App\Models\Product[] $product
 * @property-read int|null $product_count
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\ProductCategory newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\ProductCategory newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\ProductCategory query()
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
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\ProductChecklist newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\ProductChecklist newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\ProductChecklist query()
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
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @property-read \App\Models\Product $product
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\ProductDailyChecklist newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\ProductDailyChecklist newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\ProductDailyChecklist query()
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
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @property-read \App\Models\Product $product
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Production newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Production newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Production query()
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
 * App\Models\Setting
 *
 * @property string $option_name
 * @property string|null $option_value
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Setting newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Setting newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Setting query()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Setting whereOptionName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Setting whereOptionValue($value)
 */
	class Setting extends \Eloquent {}
}

namespace App\Models{
/**
 * App\Models\Task
 *
 * @property int $id
 * @property int $product_id
 * @property string|null $description
 * @property int $status
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @property-read \App\Models\Product $product
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Task newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Task newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Task query()
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
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\UnitsMeasure newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\UnitsMeasure newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\UnitsMeasure query()
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
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @property-read \Illuminate\Database\Eloquent\Collection|\Laravel\Passport\Client[] $clients
 * @property-read int|null $clients_count
 * @property-read \Illuminate\Notifications\DatabaseNotificationCollection|\Illuminate\Notifications\DatabaseNotification[] $notifications
 * @property-read int|null $notifications_count
 * @property-read \Illuminate\Database\Eloquent\Collection|\App\Models\Acl\AclRole[] $roles
 * @property-read int|null $roles_count
 * @property-read \Illuminate\Database\Eloquent\Collection|\Laravel\Passport\Token[] $tokens
 * @property-read int|null $tokens_count
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\User newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\User newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\User query()
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
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @property-read \App\Models\ChecklistWarehouseQuantity $checklistWarehouseQuantities
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Warehouse newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Warehouse newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Warehouse query()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Warehouse whereActive($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Warehouse whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Warehouse whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Warehouse whereName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Warehouse whereUpdatedAt($value)
 */
	class Warehouse extends \Eloquent {}
}

namespace App{
/**
 * App\User
 *
 * @property int $id
 * @property string $firstname
 * @property string $lastname
 * @property string $name
 * @property string $email
 * @property string $password
 * @property int $active
 * @property string|null $remember_token
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @property-read \Illuminate\Notifications\DatabaseNotificationCollection|\Illuminate\Notifications\DatabaseNotification[] $notifications
 * @property-read int|null $notifications_count
 * @method static \Illuminate\Database\Eloquent\Builder|\App\User newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\User newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\User query()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\User whereActive($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\User whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\User whereEmail($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\User whereFirstname($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\User whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\User whereLastname($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\User whereName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\User wherePassword($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\User whereRememberToken($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\User whereUpdatedAt($value)
 */
	class User extends \Eloquent {}
}

