////////////////////////////////////////////////////////////
//
// SFML - Simple and Fast Multimedia Library
// Copyright (C) 2007-2012 Laurent Gomila (laurent.gom@gmail.com)
//
// This software is provided 'as-is', without any express or implied warranty.
// In no event will the authors be held liable for any damages arising from the use of this software.
//
// Permission is granted to anyone to use this software for any purpose,
// including commercial applications, and to alter it and redistribute it freely,
// subject to the following restrictions:
//
// 1. The origin of this software must not be misrepresented;
//    you must not claim that you wrote the original software.
//    If you use this software in a product, an acknowledgment
//    in the product documentation would be appreciated but is not required.
//
// 2. Altered source versions must be plainly marked as such,
//    and must not be misrepresented as being the original software.
//
// 3. This notice may not be removed or altered from any source distribution.
//
////////////////////////////////////////////////////////////

module dcsfml.Graphics.Transformable;
extern(System):

////////////////////////////////////////////////////////////
// Imports
////////////////////////////////////////////////////////////
import dcsfml.Graphics.Types;
import dcsfml.System.Vector2;


////////////////////////////////////////////////////////////
/// \brief Create a new transformable
///
/// \return A new sfTransformable object
///
////////////////////////////////////////////////////////////
sfTransformable* sfTransformable_create();

////////////////////////////////////////////////////////////
/// \brief Copy an existing transformable
///
/// \param transformable Transformable to copy
///
/// \return Copied object
///
////////////////////////////////////////////////////////////
sfTransformable* sfTransformable_copy(sfTransformable* transformable);

////////////////////////////////////////////////////////////
/// \brief Destroy an existing transformable
///
/// \param transformable Transformable to delete
///
////////////////////////////////////////////////////////////
void sfTransformable_destroy(sfTransformable* transformable);

////////////////////////////////////////////////////////////
/// \brief Set the position of a transformable
///
/// This function completely overwrites the previous position.
/// See sfTransformable_move to apply an offset based on the previous position instead.
/// The default position of a transformable Transformable object is (0, 0).
///
/// \param transformable Transformable object
/// \param position      New position
///
////////////////////////////////////////////////////////////
void sfTransformable_setPosition(sfTransformable* transformable, sfVector2f position);

////////////////////////////////////////////////////////////
/// \brief Set the orientation of a transformable
///
/// This function completely overwrites the previous rotation.
/// See sfTransformable_rotate to add an angle based on the previous rotation instead.
/// The default rotation of a transformable Transformable object is 0.
///
/// \param transformable Transformable object
/// \param angle         New rotation, in degrees
///
////////////////////////////////////////////////////////////
void sfTransformable_setRotation(sfTransformable* transformable, float angle);

////////////////////////////////////////////////////////////
/// \brief Set the scale factors of a transformable
///
/// This function completely overwrites the previous scale.
/// See sfTransformable_scale to add a factor based on the previous scale instead.
/// The default scale of a transformable Transformable object is (1, 1).
///
/// \param transformable Transformable object
/// \param scale         New scale factors
///
////////////////////////////////////////////////////////////
void sfTransformable_setScale(sfTransformable* transformable, sfVector2f scale);

////////////////////////////////////////////////////////////
/// \brief Set the local origin of a transformable
///
/// The origin of an object defines the center point for
/// all transformations (position, scale, rotation).
/// The coordinates of this point must be relative to the
/// top-left corner of the object, and ignore all
/// transformations (position, scale, rotation).
/// The default origin of a transformable Transformable object is (0, 0).
///
/// \param transformable Transformable object
/// \param origin        New origin
///
////////////////////////////////////////////////////////////
void sfTransformable_setOrigin(sfTransformable* transformable, sfVector2f origin);

////////////////////////////////////////////////////////////
/// \brief Get the position of a transformable
///
/// \param transformable Transformable object
///
/// \return Current position
///
////////////////////////////////////////////////////////////
sfVector2f sfTransformable_getPosition(const(sfTransformable)* transformable);

////////////////////////////////////////////////////////////
/// \brief Get the orientation of a transformable
///
/// The rotation is always in the range [0, 360].
///
/// \param transformable Transformable object
///
/// \return Current rotation, in degrees
///
////////////////////////////////////////////////////////////
float sfTransformable_getRotation(const(sfTransformable)* transformable);

////////////////////////////////////////////////////////////
/// \brief Get the current scale of a transformable
///
/// \param transformable Transformable object
///
/// \return Current scale factors
///
////////////////////////////////////////////////////////////
sfVector2f sfTransformable_getScale(const(sfTransformable)* transformable);

////////////////////////////////////////////////////////////
/// \brief Get the local origin of a transformable
///
/// \param transformable Transformable object
///
/// \return Current origin
///
////////////////////////////////////////////////////////////
sfVector2f sfTransformable_getOrigin(const(sfTransformable)* transformable);

////////////////////////////////////////////////////////////
/// \brief Move a transformable by a given offset
///
/// This function adds to the current position of the object,
/// unlike sfTransformable_setPosition which overwrites it.
///
/// \param transformable Transformable object
/// \param offset        Offset
///
////////////////////////////////////////////////////////////
void sfTransformable_move(sfTransformable* transformable, sfVector2f offset);

////////////////////////////////////////////////////////////
/// \brief Rotate a transformable
///
/// This function adds to the current rotation of the object,
/// unlike sfTransformable_setRotation which overwrites it.
///
/// \param transformable Transformable object
/// \param angle         Angle of rotation, in degrees
///
////////////////////////////////////////////////////////////
void sfTransformable_rotate(sfTransformable* transformable, float angle);

////////////////////////////////////////////////////////////
/// \brief Scale a transformable
///
/// This function multiplies the current scale of the object,
/// unlike sfTransformable_setScale which overwrites it.
///
/// \param transformable Transformable object
/// \param factors       Scale factors
///
////////////////////////////////////////////////////////////
void sfTransformable_scale(sfTransformable* transformable, sfVector2f factors);

////////////////////////////////////////////////////////////
/// \brief Get the combined transform of a transformable
///
/// \param transformable Transformable object
///
/// \return Transform combining the position/rotation/scale/origin of the object
///
////////////////////////////////////////////////////////////
const(sfTransform)* sfTransformable_getTransform(const(sfTransformable)* transformable);

////////////////////////////////////////////////////////////
/// \brief Get the inverse of the combined transform of a transformable
///
/// \param transformable Transformable object
///
/// \return Inverse of the combined transformations applied to the object
///
////////////////////////////////////////////////////////////
const(sfTransform)* sfTransformable_getInverseTransform(const(sfTransformable)* transformable);


